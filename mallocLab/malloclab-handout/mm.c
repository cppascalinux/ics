// 胡晋侨 2000013141
/*
 * mm.c
 * To save space, all address are stored by relative offset by the head of entire heap
 * 
 * Each free block has 4 32-bit integers stored in it
 * Assuming that the block starts at postion p, then the length of the block along with free flags are stored at p
 * The previous pointer of the free list is stored at p+4, while the next pointer of the free list is stored at p+8
 * The length of the block is also stored at (p+LENGTH(p)-4) (the end of this block)
 * 
 * Each allocated block has 1 32-bit integer stored in it
 * Assuming that the block starts at postion p, then the length of the block along with free flags are stored at p
 * And the actual usable space starts at p+4
 * 
 * The minimum block size is 16 bytes, as each free block has to store 4 4-byte integers
 * 
 * The head pointers to all the free lists are stored at the head of the entire heap
 * There are 30 segregated lists in total, each storing free blocks in certain range
 * 
 * In malloc, the allocator first tries to find an available free block in the corresponding list of the required length
 * If it cannot, it will continue to search for available blocks in larger lists
 * If still no available empty block is found, it extends the heap and used the resulting empty block
 * When the allocator finds the free block, it will always try to split it,
 * unless the remaining size is less than 16 bytes, as the minimum length of block is 16 bytes
 * 
 * In free, the allocator always tries to coelesc the freed block with neibouring empty blocks
 * 
 * The realloc strategy is more complexed:
 * If the new size is the same as old size, do nothing
 * If the new size is smaller than the old size, shrink the block, possibly create a new free block at the end
 * If the new size if larger than the old size:
 *   If the free block after this block has enough space, just extend the current block, possibly splitting the free block
 *   Else if the current block is at the end of the heap, just extend the heap to get enough space
 *   Else just malloc a new space, do memcpy, and free the old space
 * 
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
// number of sections (segregated lists)
#define SECTION 30
// minimum bytes allocated each time with mem_sbrk
#define CHUNK 2048

// several macros of pointer arithmetics
#define GETLEN(p) (*(unsigned*)(p)&MASK)
#define SETLEN(p) (*(unsigned*)(p))
#define SETPREV(p) (*(unsigned*)((p)+4))
#define SETNEXT(p) (*(unsigned*)((p)+8))
#define ISUSED(p) (*(unsigned*)(p)&USED)
#define ISPREV(p) (*(unsigned*)(p)&PREV)
#define ISHEAD(p) ((p)<head+SECTION*4)
#define GETHEAD(num) (head+(num)*4)
#define OFFSET(p) ((p)-head)
#define ADDHEAD(p) ((p)+head)

// pointer to the head of the heap
char *head=NULL;
// pointer to the epilogue block
char *tail=NULL;
/*
 * Initialize: return -1 on error, 0 on success.
 */
/* allocate SECTION*4+8 bytes of space, SECTION*4 for segregate head pointers,
 * 4 each for epilogue and prologue blacks
 */
int mm_init(void) {
    mem_reset_brk();
    head=(char*)mem_sbrk(SECTION*4+8);
    if(head==(char*)-1)
        return -1;
    memset(head,0,SECTION*4+8);
    *(unsigned*)(head+SECTION*4)=4|USED;
    tail=head+SECTION*4+4;
    SETLEN(tail)=4|USED|PREV;
    return 0;
}
// get the number of group for length len
inline int get_num(unsigned len)
{
    len=(ALIGN(len))>>3;
    if(len<=2) return 0;
    if(len<=4) return 1;
    if(len<=6) return 2;
    if(len<=8) return 3;
    if(len<=10) return 4;
    if(len<=20) return 5;
    if(len<=30) return 6;
    if(len<=40) return 7;
    if(len<=50) return 8;
    if(len<=60) return 9;
    if(len<=70) return 10;
    if(len<=80) return 11;
    if(len<=90) return 12;
    if(len<=100) return 13;
    if(len<=200) return 14;
    if(len<=300) return 15;
    if(len<=450) return 16;
    if(len<=600) return 17;
    if(len<=750) return 18;
    if(len<=900) return 19;
    if(len<=1100) return 20;
    if(len<=2500) return 21;
    if(len<=4000) return 22;
    if(len<=6000) return 23;
    if(len<=8000) return 24;
    if(len<=10000) return 25;
    if(len<=20000) return 26;
    if(len<=30000) return 27;
    if(len<=40000) return 28;
    return 29;
}
// remove a free block from the list
inline void remove_free_block(char *p)
{
    char *prev=ADDHEAD(SETPREV(p));
    char *next=ADDHEAD(SETNEXT(p));
    // judge whether prev is the head of the free list
    char *prvnxt=ISHEAD(prev)?prev:prev+8;
    SETLEN(prvnxt)=OFFSET(next);
    // next is not NULL
    if(next!=head)
        SETPREV(next)=OFFSET(prev);
}
// add a free block to the head of corresponding free list
inline void add_free_block(char *p)
{
    int num=get_num(GETLEN(p));
    char *prev=GETHEAD(num);
    char *next=ADDHEAD(SETLEN(prev));
    SETPREV(p)=OFFSET(prev);
    SETNEXT(p)=OFFSET(next);
    SETLEN(prev)=OFFSET(p);
    // next is not NULL
    if(next!=head)
        SETPREV(next)=OFFSET(p);
}
// extend the heap by len, coalesc the ending free blocks
// return pointer to the address of the extended free block
inline char *extend_heap(unsigned len)
{
    // at least CHUNK bytes
    if(len<CHUNK)
        len=CHUNK;
    // the last block before tail is not free
    if(ISPREV(tail))
    {
        mem_sbrk(len);
        char *ptr=tail;
        tail+=len;
        SETLEN(tail)=4|USED;
        SETLEN(ptr)=len|PREV;
        SETLEN(tail-4)=len;
        add_free_block(ptr);
        return ptr;
    }
    // the last block before tail is free
    else
    {
        unsigned prelen=GETLEN(tail-4);
        mem_sbrk(len-prelen);
        char *ptr=tail-prelen;
        tail=ptr+len;
        SETLEN(tail)=4|USED;
        remove_free_block(ptr);
        SETLEN(ptr)=len|PREV;
        SETLEN(tail-4)=len;
        add_free_block(ptr);
        return ptr;
    }
}
// find a matching block of length bsize, return the pointer
inline char *find_block(unsigned bsize)
{
    int num=get_num(bsize);
    unsigned pos=SETLEN(GETHEAD(num));
    // the current matching group
    while(pos)
    {
        char *ptr=ADDHEAD(pos);
        unsigned len=GETLEN(ptr);
        if(len>=bsize)
            return ptr;
        pos=SETNEXT(ptr);
    }
    // the larger groups
    while(++num<SECTION)
    {
        pos=SETLEN(GETHEAD(num));
        if(pos)
        {
            return ADDHEAD(pos);
        }
    }
    // no free block found, extend heap
    return extend_heap(bsize);
}

/*
 * malloc
 * returns an 8-byte aligned pointer to allocated space of length at least size
 * possibly splitting empty blocks
 */
void *malloc (size_t size) {
    // the block should be at least 4 bytes large than size, 8-byte aligned
    unsigned bsize=ALIGN(size+4);
    // the block should be at least 16 bytes
    if(bsize<16)
        bsize=16;
    char *p=find_block(bsize);
    unsigned len=GETLEN(p);
    // the free block cannot be splitted
    if(len<=bsize+8)
    {
        remove_free_block(p);
        SETLEN(p)=len|USED|PREV;
        char *next=p+len;
        SETLEN(next)|=PREV;
    }
    // the free block can be splitted
    else
    {
        remove_free_block(p);
        SETLEN(p)=bsize|PREV|USED;
        char *next=p+bsize;
        SETLEN(next)=(len-bsize)|PREV;
        SETLEN(p+len-4)=len-bsize;
        add_free_block(next);
    }
    return p+4;
}

/*
 * free
 * free the space allocated by ptr
 * possibly coelescing empty blocks
 */
void free (void *ptr) {
    if(!ptr) return;
    // get pointer to the start of the block
    char *p=(char*)ptr-4;
    unsigned len=GETLEN(p),totl=len;
    char *next=p+len;
    // the next block is not free
    if(ISUSED(next))
    {
        SETLEN(next)&=~PREV;
    }
    // the next block is free
    else
    {
        totl+=GETLEN(next);
        remove_free_block(next);
    }
    // the previous block of p is free
    if(!ISPREV(p))
    {
        unsigned prevl=GETLEN(p-4);
        totl+=prevl;
        char *prev=p-prevl;
        remove_free_block(prev);
        p=prev;
    }
    // add new free block
    SETLEN(p)=totl|PREV;
    SETLEN(p+totl-4)=totl;
    add_free_block(p);
}

/*
 * realloc - you may want to look at mm-naive.c
 * If the new size is the same as old size, do nothing
 * If the new size is smaller than the old size, shrink the block, possibly create a new free block at the end
 * If the new size if larger than the old size:
 *   If the free block after this block has enough space, just extend the current block, possibly splitting the free block
 *   Else if the current block is at the end of the heap, just extend the heap to get enough space
 *   Else just malloc a new space, do memcpy, and free the old space
 * 
 */
void *realloc(void *oldptr, size_t size) {
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
    unsigned msk=SETLEN(p)&(~MASK);
    unsigned oldlen=GETLEN(p);
    if(newlen==oldlen)
    {
        return oldptr;
    }
    char *next=p+oldlen;
    // shrink the current block
    if(newlen<oldlen)
    {
        unsigned delta=oldlen-newlen;
        // can create new free block
        if((ISUSED(next)&&delta>8))
        {
            SETLEN(p)=newlen|msk;
            SETLEN(next)&=(~PREV);
            char *ptr=p+newlen;
            SETLEN(ptr)=delta|PREV;
            SETLEN(next-4)=delta;
            add_free_block(ptr);
        }
        // the next block is free
        else if(!ISUSED(next))
        {
            SETLEN(p)=newlen|msk;
            unsigned frelen=GETLEN(next)+delta;
            remove_free_block(next);
            next=p+newlen;
            SETLEN(next)=frelen|PREV;
            SETLEN(next+frelen-4)=frelen;
            add_free_block(next);
        }
        // else just do nothing
        return oldptr;
    }
    // should extend the current block
    unsigned delta=newlen-oldlen;
    unsigned nextlen=GETLEN(next);
    // the next block is free, and have enough space for extending
    if(!ISUSED(next)&&nextlen>=delta)
    {
        remove_free_block(next);
        // the next block can be splitted
        if(nextlen>=delta+16)
        {
            SETLEN(p)=newlen|msk;
            next+=delta;
            nextlen-=delta;
            SETLEN(next)=nextlen|PREV;
            SETLEN(next+nextlen-4)=nextlen;
            add_free_block(next);
        }
        else
        {
            SETLEN(p)=(oldlen+nextlen)|msk;
            SETLEN(next+nextlen)|=PREV;
        }
        return oldptr;
    }
    // the current block is near the end of the heap
    if(next==tail||(!ISUSED(next)&&next+nextlen==tail))
    {
        next=extend_heap(delta);
        remove_free_block(next);
        unsigned frelen=tail-next;
        // the free block can be splited
        if(frelen>=delta+16)
        {
            SETLEN(p)=newlen|msk;
            next+=delta;
            SETLEN(next)=(frelen-delta)|PREV;
            SETLEN(tail-4)=(frelen-delta);
            add_free_block(next);
        }
        // the free block cannot be splitted
        else
        {
            SETLEN(p)=(oldlen+frelen)|msk;
            SETLEN(tail)|=PREV;
        }
        return oldptr;
    }
    // otherwise, just do malloc-memcpy-free
    char *newp=malloc(newlen);
    memcpy(newp,oldptr,oldlen-4);
    free(oldptr);
    return newp;
}

/*
 * calloc - you may want to look at mm-naive.c
 * just do malloc-memset
 * 
 */
void *calloc (size_t nmemb, size_t size) {
    unsigned len=nmemb*size;
    char *p=(char*)malloc(len);
    memset(p,0,len);
    return p;
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
// print the error message
void err(int cond,int lineno,char *p,char *msg)
{
    if(!cond)
    {
        printf("Error: line %d: %p: %s\n",lineno,p,msg);
        exit(0);
    }
}

/*
 * mm_checkheap
 * check the heap as well as the empty list
 */
void mm_checkheap(int lineno) {
    //check the heap
    char *p=ADDHEAD(SECTION*4);
    //check prologue block
    err(SETLEN(p)==(4|USED),lineno,p,"corrupted prologue block");
    p+=GETLEN(p);
    char tag=1;
    unsigned sumfree=0;
    while(p!=tail)
    {
        // check block alignement
        err((long)p%8==4,lineno,p,"block not aligned");
        unsigned len=GETLEN(p);
        // check length of the block
        err(len%8==0,lineno,p,"block length no multiplier of 8");
        err(len>=16,lineno,p,"block length less than 16");
        // prev tag is consistent with prev block
        err(!(!ISPREV(p))==tag,lineno,p,"block used tag inconsistent with previous one");
        // no two consecutive free blocks
        char cur=!(!(ISUSED(p)));
        err(!(!tag&&!cur),lineno,p,"consecutive free blocks");
        tag=cur;
        if(!cur)
            sumfree++;
        p+=len;
    }
    // check the epilogue block
    err(ISUSED(tail)&&GETLEN(tail)==4&&tail+3==(char*)mem_heap_hi(),lineno,mem_heap_hi(),"corrupted epilogue block");
    // check the free list
    for(int num=0;num<SECTION;num++)
    {
        char *prev=GETHEAD(num);
        p=ADDHEAD(SETLEN(prev));
        while(p!=head)
        {
            sumfree--;
            // the used tag is unset
            err(!ISUSED(p),lineno,p,"allocated block in free list");
            // the prev pointer points to the previous block
            err(ADDHEAD(SETPREV(p))==prev,lineno,p,"inconsistent list prev link");
            // the pointer is out of the heap
            err((char*)mem_heap_lo()<=p&&p<=(char*)mem_heap_hi(),lineno,p,"block address beyond range");
            // the length of the block is within the bucket size range
            unsigned len=GETLEN(p);
            err(get_num(len)==num,lineno,p,"size of block out of bucket size range");
            prev=p;
            p=ADDHEAD(SETNEXT(p));
        }
    }
    // all free blocks should be in the free lists
    err(sumfree==0,lineno,NULL,"not all free blocks are in the free list");
}
