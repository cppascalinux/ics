#include "csapp.h"
#include<assert.h>
/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 1000000
#define MAX_CACHE_NUM 20

/* You won't lose style points for including this long line in your code */
static const char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";

struct linked_string
{
    char *s;
    struct linked_string *next;
};
typedef struct linked_string ST;

struct resource
{
    char *host,*port,*uri;
    int length;
    char *reply;
    int lasttime;
    struct resource *next;
};
typedef struct resource RS;

struct rwworker
{
    sem_t lock;
    char type;
    struct rwworker *next;
};
typedef struct rwworker WK;

struct rwqueue
{
    sem_t mutex;
    int size;
    WK *head,*tail;
};
typedef struct rwqueue QU;

RS *hd;
QU q;
int time_stamp=0;
sem_t time_lock;
int cache_num=0;

void clienterror(int fd, char *cause, char *errnum, 
		 char *shortmsg, char *longmsg) 
{
    char buf[2*MAXLINE], body[2*MAXBUF];

    /* Build the HTTP response body */
    sprintf(body, "<html><title>Proxy Error</title>");
    sprintf(body, "%s<body bgcolor=""ffffff"">\r\n", body);
    sprintf(body, "%s%s: %s\r\n", body, errnum, shortmsg);
    sprintf(body, "%s<p>%s: %s\r\n", body, longmsg, cause);
    sprintf(body, "%s<hr><em>HJQ's proxy server</em>\r\n", body);

    /* Print the HTTP response */
    sprintf(buf, "HTTP/1.0 %s %s\r\n", errnum, shortmsg);
    rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "Content-type: text/html\r\n");
    rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "Content-length: %d\r\n\r\n", (int)strlen(body));
    rio_writen(fd, buf, strlen(buf));
    rio_writen(fd, body, strlen(body));
}
int parse_url(int connfd,char *url,char *host,char *port,char *uri)
{
    if(strncmp(url,"http://",7))
        return -1;
    int len=strlen(url),i;
    for(i=7;i<len&&url[i]!='/'&&url[i]!=':';i++)
        host[i-7]=url[i];
    host[i-7]=0;
    if(i<len&&url[i]==':')
    {
        int j;
        for(j=i+1;j<len&&url[j]!='/';j++)
            port[j-(i+1)]=url[j];
        port[j-(i+1)]=0;
        i=j;
    }
    else
        strcpy(port,"80");
    if(i==len)
        strcpy(uri,"/");
    else
    {
        int j;
        for(j=i;j<len;j++)
            uri[j-i]=url[j];
        uri[j-i]=0;
    }
    if(!strcmp(host,"127.0.0.1.nip.io"))
        strcpy(host,"127.0.0.1");
    printf("%s\n%s\n%s\n%s\n",url,host,port,uri);
    return 0;
}
void append_list(ST **head,char *str)
{
    ST *tmp=malloc(sizeof(ST));
    int n=strlen(str)+1;
    tmp->s=malloc(n);
    strcpy(tmp->s,str);
    tmp->next=*head;
    *head=tmp;
}
void free_list(ST **head)
{
    for(ST *p=*head;p;)
    {
        free(p->s);
        ST *q=p;
        p=p->next;
        free(q);
    }
    *head=NULL;
}
void free_rs(RS *p)
{
    free(p->host);
    free(p->port);
    free(p->uri);
    free(p->reply);
    free(p);
}
int readq(char *host,char *port,char *uri,char **reply)
{
    WK *tmp=malloc(sizeof(WK));
    int flag=0;
    sem_init(&tmp->lock,0,0);
    tmp->type=0;
    tmp->next=NULL;
    P(&q.mutex);
    if(q.size)
    {
        q.tail->next=tmp;
        q.tail=tmp;
    }
    else
    {
        q.head=q.tail=tmp;
        flag=1;
    }
    q.size++;
    V(&q.mutex);
    if(flag)
        V(&tmp->lock);
    P(&tmp->lock);
    P(&time_lock);
    int mytime=++time_stamp;
    V(&time_lock);
    P(&q.mutex);
    q.head=q.head->next;
    if(q.head&&q.head->type==0)
        V(&q.head->lock);
    q.size--;
    V(&q.mutex);
    RS *p;
    for(p=hd;p;p=p->next)
        if(!strcmp(host,p->host)&&!strcmp(port,p->port)&&!strcmp(uri,p->uri))
            break;
    int ret=-1;
    if(p)
    {
        // printf("Cache hit! host:%s port:%s uri:%s size:%d time:%d\n",p->host,p->port,p->uri,q.size,p->lasttime);
        p->lasttime=mytime;
        *reply=malloc(p->length+1);
        memcpy(*reply,p->reply,p->length);
        ret=p->length;
    }
    if(tmp->next&&tmp->next->type==1)
        V(&tmp->next->lock);
    free(tmp);
    return ret;
}
void writeq(RS *r)
{
    WK *tmp=malloc(sizeof(WK));
    sem_init(&tmp->lock,0,0);
    tmp->type=1;
    tmp->next=NULL;
    int flag=0;
    P(&q.mutex);
    if(q.size>1)
    {
        q.tail->next=tmp;
        q.tail=tmp;
    }
    else
    {
        q.head=q.tail=tmp;
        flag=1;
    }
    q.size++;
    V(&q.mutex);
    if(flag)
        V(&tmp->lock);
    P(&tmp->lock);
    int mytime=++time_stamp;
    if(cache_num==MAX_CACHE_NUM)
    {
        int mintime=2e9;
        RS *q=NULL,*qr=NULL;
        for(RS *p=hd,*pr=NULL;p;pr=p,p=p->next)
        {
            if(p->lasttime<mintime)
            {
                mintime=p->lasttime;
                q=p;
                qr=pr;
            }
        }
        if(qr)
            qr->next=q->next;
        else
            hd=q->next;
        free_rs(q);
        cache_num--;
    }
    r->lasttime=mytime;
    r->next=hd;
    hd=r;
    cache_num++;
    P(&q.mutex);
    q.size--;
    q.head=tmp->next;
    if(q.head)
        V(&q.head->lock);
    V(&q.mutex);
    free(tmp);
}
int require(char *host,char *port,char *uri,ST *head,char **reply)
{
    // printf("host: %s port:%s uri:%s\n",host,port,uri);
    int n;
    if((n=readq(host,port,uri,reply))>=0)
        return n;
    int clientfd;
    if((clientfd=open_clientfd(host,port))<0)
        return -1;
    char buf[MAXLINE],ans[MAX_OBJECT_SIZE+1];
    sprintf(buf,"GET %s HTTP/1.0\r\n",uri);
    // printf("qwq fd:%d buf:%s\n",clientfd,buf);
    Rio_writen(clientfd,buf,strlen(buf));
    // printf("pwp\n");
    for(ST *p=head;p;p=p->next)
    {
        printf("p->s: %s",p->s);
        // fflush(stdout);
        Rio_writen(clientfd,p->s,strlen(p->s));
    }
    Rio_writen(clientfd,"\r\n",2);
    n=Rio_readn(clientfd,ans,MAX_OBJECT_SIZE);
    *reply=malloc(n+1);
    memcpy(*reply,ans,n);
    close(clientfd);

    RS *r=malloc(sizeof(RS));
    r->host=malloc(strlen(host)+1);
    strcpy(r->host,host);
    r->port=malloc(strlen(port)+1);
    strcpy(r->port,port);
    r->uri=malloc(strlen(uri)+1);
    strcpy(r->uri,uri);
    r->length=n;
    r->reply=malloc(n+1);
    memcpy(r->reply,ans,n);
    writeq(r);
    return n;
}
void *thread(void *vargp)
{
    Pthread_detach(Pthread_self());
    int connfd=(long)vargp;
    char buf[MAXLINE],method[MAXLINE],url[MAXLINE],version[MAXLINE];
    char host[MAXLINE],port[MAXLINE],uri[MAXLINE];
    char hoststr[MAXLINE];
    rio_t rio;
    Rio_readinitb(&rio,connfd);
    int n=Rio_readlineb(&rio,buf,MAXLINE);
    if(sscanf(buf,"%s %s %s",method,url,version)<3)
    {
        clienterror(connfd,buf,"400","Bad Request","Invalid Request Header");
        close(connfd);
        return NULL;
    }
    if(strcasecmp(method,"GET"))
    {
        clienterror(connfd,method,"400","Bad Request","Unsupported Method");
        close(connfd);
        return NULL;
    }
    if(parse_url(connfd,url,host,port,uri)<0)
    {
        clienterror(connfd,url,"400","Bad Request","Invalid URL");
        close(connfd);
        return NULL;
    }
    printf("url: %s\nhost: %s\nport: %s\n uri:%s\n",url,host,port,uri);
    strcpy(hoststr,"Host: ");
    strcat(hoststr,host);
    strcat(hoststr,"\r\n");
    n=Rio_readlineb(&rio,buf,MAXLINE);
    ST *head=NULL;
    while(strcmp(buf,"\r\n"))
    {
        // printf("qwq\n");
        // printf("%s",buf);
        if(!strncmp(buf,"Host:",5))
            strcpy(hoststr,buf);
        else if(!strncmp(buf,"User-Agent:",11)||!strncmp(buf,"Connection:",11)
                ||!strncmp(buf,"Proxy-Connection:",17));
        else
            append_list(&head,buf);
        n=Rio_readlineb(&rio,buf,MAXLINE);
    }
    append_list(&head,hoststr);
    append_list(&head,user_agent_hdr);
    append_list(&head,"Connection: close\r\n");
    append_list(&head,"Proxy-Connection: close\r\n");
    char *reply;
    if((n=require(host,port,uri,head,&reply))<0)
    {
        clienterror(connfd,host,"502","Bad Gateway","Couldn't Connect To Host");
        free_list(&head);
        close(connfd);
        return NULL;
    }
    printf("\nn:%d\n",n);
    free_list(&head);
    Rio_writen(connfd,reply,n);
    close(connfd);
    free(reply);
    return NULL;
}
int main(int argc,char **argv)
{
    if(argc<2)
    {
        fprintf(stderr,"Usage: %s <listening_port>\n",argv[0]);
        exit(0);
    }
    sem_init(&q.mutex,0,1);
    sem_init(&time_lock,0,1);
    int listenfd=Open_listenfd(argv[1]);
    while(1)
    {
        struct sockaddr_storage clientaddr;
        socklen_t clientlen=sizeof(struct sockaddr_storage);
        int connfd=Accept(listenfd,(SA*)&clientaddr,&clientlen);
        pthread_t tid;
        Pthread_create(&tid,NULL,thread,(void*)(long)connfd);
    }
    return 0;
}
