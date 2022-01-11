// 胡晋侨 2000013141
// Implementation of cache simulator
#include"cachelab.h"
#include<stdio.h>
#include<stdlib.h>
#include<getopt.h>
#include<string.h>
typedef unsigned long long ull;
struct foo // struct for a block
{
	int v;
	int tme; // last access time
	ull tag;
};
typedef struct foo blk;
char *msg=
"Usage: ./csim [-hv] -s <s> -E <E> -b <b> -t <tracefile>\n"
"-h: Optional help flag that prints usage info\n"
"-v: Optional verbose flag that displays trace info\n"
"-s <s>: Number of set index bits (S = 2^s is the number of sets)\n"
"-E <E>: Associativity (number of lines per set)\n"
"-b <b>: Number of block bits (B = 2^b is the block size)\n"
"-t <tracefile>: Name of the valgrind trace to replay\n";
// parameters
int verbose=0,sets=0,assoc=0,block=0;
// counter for hit/miss/eviction
int hitc=0,missc=0,evictc=0;
// pointer to cache
blk **cache;
// trace file pointer
FILE *in;
// print error message s1+s2 and exit
void err(char *s1,char *s2)
{
	char *s=(char*)malloc(strlen(s1)+strlen(s2)+2);
	strcpy(s,s1);
	strcat(s,s2);
	puts(s);
	exit(0);
}
// print parse error
void perr(int line,char *s)
{
	printf("Line %d: Parse error: %s\n",line,s);
	exit(0);
}
// allocate memory for cache simulation
void init()
{
	cache=(blk**)calloc(1<<sets,sizeof(blk*));
	for(int i=0;i<(1<<sets);i++)
		cache[i]=(blk*)calloc(assoc,sizeof(blk));
}
// type: L/M/S; tme: access time
void access(char type,int tme,ull addr)
{
	ull mask=(1ULL<<sets)-1;
	// set number
	ull num=(addr>>block)&mask;
	ull tag=addr>>(block+sets);
	// find the set
	blk *s=cache[num];
	int hit=0,evict=0;
	for(int i=0;i<assoc;i++)
	{
		if(s[i].v&&tag==s[i].tag)
		{
			s[i].tme=tme;
			hit=1;
			break;
		}
	}
	// printf("hit:%d\n",hit);
	// cache miss
	if(!hit)
	{
		evict=1;
		for(int i=0;i<assoc;i++)
		{
			if(!s[i].v)
			{
				s[i].v=1;
				s[i].tag=tag;
				s[i].tme=tme;
				evict=0;
				break;
			}
		}
		// no spare cache block
		if(evict)
		{
			int mint=0;
			for(int i=1;i<assoc;i++)
				if(s[i].tme<s[mint].tme)
					mint=i;
			s[mint].tag=tag;
			s[mint].tme=tme;
		}
	}
	//update counters
	hitc+=hit;
	hitc+=(type=='M');
	missc+=1-hit;
	evictc+=evict;
	// output
	if(verbose)
	{
		printf(" %s",hit?"hit":"miss");
		printf("%s",evict?" eviction":"");
		printf("%s\n",type=='M'?" hit":"");
	}
}
//parse the trace file
void work()
{
	const int MAXL=128;
	char buf[MAXL+2];
	int line=0;
	while(!feof(in))
	{
		line++;
		fgets(buf,MAXL,in);
		if(feof(in))
			break;
		int len=strlen(buf);
		// check the format
		if(buf[0]!=' '&&buf[0]!='I')
			perr(line,buf);
		if(buf[0]=='I')
			continue;
		if((buf[1]!='M'&&buf[1]!='L'&&buf[1]!='S')||buf[2]!=' ')
			perr(line,buf);
		// hex to ull
		ull addr=0;
		int pt=3;
		char c=0;
		for(pt=3;pt<len;pt++)
		{
			if((c=buf[pt])==',')
				break;
			if(!((c>='0'&&c<='9')||(c>='a'&&c<='f')))
				perr(line,buf);
			int v=c>='0'&&c<='9'?c-'0':c-'a'+10;
			addr=(addr<<4)+v;
		}
		if(c!=',')
			perr(line,buf);
		if(++pt>=len)
			perr(line,buf);
		c=buf[pt];
		if(c<'0'||c>'9')
			perr(line,buf);
		if(buf[pt+1]!='\n'||buf[pt+2]!=0)
			perr(line,buf);
		buf[pt+1]=0;
		if(verbose)
			printf("%s",buf+1);
		access(buf[1],line,addr);
	}
}
// free allocated memory
void clean()
{
	for(int i=0;i<(1<<sets);i++)
		free(cache[i]);
	free(cache);
}
int main(int argc,char *argv[])
{
	int opt,cnt=0;
	while(~(opt=getopt(argc,argv,"h::v::s:E:b:t:")))
	{
		switch(opt)
		{
			case 'h':
				err(msg,"");
				break;
			case 'v':
				verbose=1;
				break;
			case 's':
				cnt++;
				if((sets=atoi(optarg))<=0)
					err("Invalid s: ",optarg);
				break;
			case 'E':
				cnt++;
				if((assoc=atoi(optarg))<=0)
					err("Invalid E: ",optarg);
				break;
			case 'b':
				cnt++;
				if((block=atoi(optarg))<=0)
					err("Invalid b: ",optarg);
				break;
			case 't':
				cnt++;
				if((in=fopen(optarg,"r"))==NULL)
					err("Cannot open trace file: ",optarg);
				break;
			default:
				err(msg,"");
		}
	}
	if(cnt<4)
		err(msg,"");
	init();
	work();
	clean();
	printSummary(hitc,missc,evictc);
	return 0;
}