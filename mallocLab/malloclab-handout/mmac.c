// 胡晋侨 2000013141
/*
 * mm.c
 *
 * NOTE TO STUDENTS: Replace this header comment with your own header
 * comment that gives a high level description of your solution.
 */
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "mm.h"
#include "memlib.h"

/* If you want debugging output, use the following macro.  When you hand
 * in, remove the #define DEBUG line. */
#define DEBUG
#ifdef DEBUG
# define dbg_printf(...) printf(__VA_ARGS__)
#else
# define dbg_printf(...)
#endif

/* do not change the following! */
#ifdef DRIVER
/* create aliases for driver tests */
#define malloc mm_malloc
#define free mm_free
#define realloc mm_realloc
#define calloc mm_calloc
#endif /* def DRIVER */

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(p) (((size_t)(p) + (ALIGNMENT-1)) & ~0x7)

// flags for whether this / prev block is used
#define USED 1
#define PREV 2
#define MASK -4
// number of sections
#define SECTION 30
// memory allocated each time
#define PAGE 800

char *head=NULL;// pointer to head of the heap
char *tail=NULL;// pointer to the epilogue block
/*
 * Initialize: return -1 on error, 0 on success.
 */
// allocate 72 bytes of space, 64 for segregate head pointers,
// 4 each for epilogue and prologue blacks
int mm_init(void) {
    mem_reset_brk();
    head=(char*)mem_sbrk(SECTION*4+8);
    if(head==(char*)-1)
        return -1;
    memset(head,0,SECTION*4+8);
    *(unsigned*)(head+SECTION*4)=4|USED;
    *(unsigned*)(head+SECTION*4+4)=4|USED|PREV;
    tail=head+SECTION*4+4;
    // extend_heap(10000000);
    // printf("head:%p tail:%p\n",head,tail);
    return 0;
}
// get the number of group for length len
inline int get_num1(unsigned len)
{
    unsigned bsize=(((ALIGN(len))>>3)-1)>>1;
    int num=0;
    while(num+1<SECTION&&bsize)
    {
        bsize>>=1;
        num++;
    }
    return num;
}
inline int get_num(unsigned len)
{
    len=(ALIGN(len))>>3;
    if(len<=2) return 0;
    if(len<=4) return 1;
    if(len<=6) return 2;
    if(len<=8) return 3;
    if(len<=12) return 4;
    if(len<=16) return 5;
    if(len<=20) return 6;
    if(len<=24) return 7;
    if(len<=32) return 8;
    if(len<=48) return 9;
    if(len<=64) return 10;
    if(len<=100) return 11;
    if(len<=200) return 12;
    if(len<=300) return 13;
    if(len<=400) return 14;
    if(len<=500) return 15;
    if(len<=600) return 16;
    if(len<=700) return 17;
    if(len<=800) return 18;
    if(len<=900) return 19;
    if(len<=1000) return 20;
    if(len<=2000) return 21;
    if(len<=3000) return 22;
    if(len<=4000) return 23;
    if(len<=5000) return 24;
    if(len<=6000) return 25;
    if(len<=7000) return 26;
    if(len<=8000) return 27;
    if(len<=9000) return 28;
    return 29;
}
// remove an empty block from the list
inline void remove_empty_block(char *p)
{
    char *prev=head+*(unsigned*)(p+4);
    char *next=head+*(unsigned*)(p+8);
    char *prvnxt=prev<head+SECTION*4?prev:prev+8;
    *(unsigned*)prvnxt=next-head;
    // printf("p:%p prvnxt:%p\n",p,prvnxt);
    if(next!=head)
        *(unsigned*)(next+4)=prev-head;
}
// add an empty block to list num
inline void add_empty_block(char *p)
{
    int num=get_num(*(unsigned*)p&MASK);
    char *prev=head+4*num;
    char *next=head+*(unsigned*)prev;
    *(unsigned*)(p+4)=prev-head;
    *(unsigned*)(p+8)=next-head;
    *(unsigned*)prev=p-head;
    if(next!=head)
        *(unsigned*)(next+4)=p-head;
}
// extend the heap by len, coalesc the ending empty blocks
// return pointer to the address of the last empty block
inline char *extend_heap(unsigned len)
{
    if(len<PAGE)
        len=PAGE;
    if(*(unsigned*)tail&PREV)
    {
        mem_sbrk(len);
        char *ptr=tail;
        tail+=len;
        // printf("tail:%p len:%d\n",tail,len);
        *(unsigned*)tail=4|USED;
        *(unsigned*)ptr=len|PREV;
        *(unsigned*)(tail-4)=len;
        add_empty_block(ptr);
        return ptr;
    }
    else
    {
        unsigned prelen=*(unsigned*)(tail-4);
        unsigned dl=len-prelen;
        mem_sbrk(dl);
        char *ptr=tail-prelen;
        tail=ptr+len;
        *(unsigned*)tail=4|USED;
        remove_empty_block(ptr);
        *(unsigned*)ptr=len|PREV;
        *(unsigned*)(tail-4)=len;
        add_empty_block(ptr);
        return ptr;
    }
}
// find a matching block of length bsize, return the pointer
inline char *find_block(unsigned bsize)
{
    int num=get_num(bsize);
    unsigned pos=*(unsigned*)(head+4*num);
    // printf("bsize:%d num:%d pos:%d\n",bsize,num,pos);
    while(pos)
    {
        char *ptr=head+pos;
        unsigned len=*(unsigned*)ptr&MASK;
        if(len>=bsize)
            return ptr;
        pos=*(unsigned*)(ptr+8);
    }
    while(++num<SECTION)
    {
        pos=*(unsigned*)(head+4*num);
        if(pos)
        {
            // printf("qwq! num:%d\n",num);
            return head+pos;
        }
    }
    // printf("qwq\n");
    return extend_heap(bsize);
}

/*
 * malloc
 */
void *malloc (size_t size) {
    unsigned bsize=ALIGN(size+4);
    if(bsize<16)
        bsize=16;
    // printf("size:%d bsize:%d\n",size,bsize);
    char *p=find_block(bsize);
    // printf("p:%p\n",p);
    unsigned len=*(unsigned*)p&MASK;
    if(len<=bsize+8)
    {
        remove_empty_block(p);
        *(unsigned*)p=len|USED|PREV;
        char *next=p+len;
        *(unsigned*)next|=PREV;
        // printf("p:%p\n",p);
        return p+4;
    }
    else
    {
        remove_empty_block(p);
        *(unsigned*)p=bsize|PREV|USED;
        char *next=p+bsize;
        *(unsigned*)next=(len-bsize)|PREV;
        *(unsigned*)(p+len-4)=len-bsize;
        add_empty_block(next);
        // printf("p:%p\n",p);
        return p+4;
    }
    return NULL;
}

/*
 * free
 */
void free (void *ptr) {
    if(!ptr) return;
    char *p=(char*)ptr-4;
    unsigned len=*(unsigned*)p&MASK,totl=len;
    char *next=p+len;
    if(*(unsigned*)next&USED)
    {
        *(unsigned*)next&=~PREV;
    }
    else
    {
        totl+=*(unsigned*)next&MASK;
        remove_empty_block(next);
    }
    if(!(*(unsigned*)p&PREV))
    {
        unsigned prevl=*(unsigned*)(p-4);
        totl+=prevl;
        char *prev=p-prevl;
        remove_empty_block(prev);
        p=prev;
    }
    *(unsigned*)p=totl|PREV;
    *(unsigned*)(p+totl-4)=totl;
    add_empty_block(p);
}

/*
 * realloc - you may want to look at mm-naive.c
 */
void *realloc(void *oldptr, size_t size) {
    // printf("qwq");
    if(oldptr==NULL)
    {
        return malloc(size);
    }
    if(size==0)
    {
        free(oldptr);
        return NULL;
    }
    unsigned newlen=ALIGN(size+4);
    if(newlen<16)
        newlen=16;
    char *p=(char*)oldptr-4;
    unsigned msk=*(unsigned*)p&(~MASK);
    unsigned oldlen=*(unsigned*)p&MASK;
    if(newlen==oldlen)
    {
        return oldptr;
    }
    char *next=p+oldlen;
    if(newlen<oldlen)
    {
        if((*(unsigned*)next&USED)&&newlen<oldlen-8)
        {
            *(unsigned*)p=newlen|msk;
            *(unsigned*)next&=(~PREV);
            char *ptr=p+newlen;
            *(unsigned*)ptr=(oldlen-newlen)|PREV;
            *(unsigned*)(next-4)=oldlen-newlen;
            add_empty_block(ptr);
        }
        else if(!(*(unsigned*)next&USED))
        {
            *(unsigned*)p=newlen|msk;
            int eptlen=(*(unsigned*)next&MASK)+(oldlen-newlen);
            remove_empty_block(next);
            next=p+newlen;
            *(unsigned*)next=eptlen|PREV;
            *(unsigned*)(next+eptlen-4)=eptlen;
            add_empty_block(next);
        }
        return oldptr;
    }
    unsigned delta=newlen-oldlen;
    unsigned nextlen=*(unsigned*)next&MASK;
    if(!(*(unsigned*)next&USED))
    {
        if(nextlen>=delta)
        {
            remove_empty_block(next);
            if(nextlen>=delta+16)
            {
                *(unsigned*)p=newlen|msk;
                next=next+delta;
                nextlen=nextlen-delta;
                *(unsigned*)next=nextlen|PREV;
                *(unsigned*)(next+nextlen-4)=nextlen;
                add_empty_block(next);
            }
            else
            {
                *(unsigned*)p=(oldlen+nextlen)|msk;
                next=next+nextlen;
                *(unsigned*)next|=PREV;
            }
            return oldptr;
        }
    }
    // if(next==tail||(!(*(unsigned*)next&USED)&&next+nextlen==tail))
    // {
    //     next=extend_heap(delta);
    //     remove_empty_block(next);
    //     unsigned eptlen=tail-next;
    //     if(eptlen>=delta+16)
    //     {
    //         *(unsigned*)p=newlen|msk;
    //         next+=delta;
    //         *(unsigned*)next=(eptlen-delta)|PREV;
    //         *(unsigned*)(tail-4)=(eptlen-delta);
    //         add_empty_block(next);
    //     }
    //     else
    //     {
    //         *(unsigned*)p=(oldlen+eptlen)|msk;
    //         *(unsigned*)tail|=PREV;
    //     }
    //     return oldptr;
    // }
    char *newp=malloc(newlen);
    memcpy(newp,oldptr,oldlen-4);
    free(oldptr);
    return newp;
    return NULL;
}

/*
 * calloc - you may want to look at mm-naive.c
 * This function is not tested by mdriver, but it is
 * needed to run the traces.
 */
void *calloc (size_t nmemb, size_t size) {
    unsigned len=nmemb*size;
    char *p=(char*)malloc(len);
    memset(p,0,len);
    return (void*)p;
    return NULL;
}


/*
 * Return whether the pointer is in the heap.
 * May be useful for debugging.
 */
static int in_heap(const void *p) {
    return p <= mem_heap_hi() && p >= mem_heap_lo();
}

/*
 * Return whether the pointer is aligned.
 * May be useful for debugging.
 */
static int aligned(const void *p) {
    return (size_t)ALIGN(p) == (size_t)p;
}

/*
 * mm_checkheap
 */
void mm_checkheap(int lineno) {
}
