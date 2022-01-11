// 胡晋侨 2000013141
/*
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */
#include <stdio.h>
#include "cachelab.h"
#include "contracts.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);
// copy a block of elements from A to B (and transpose)
void copya(int M,int N,int A[N][M],int B[M][N],int len,int ax,int ay,int bx,int by)
{
    for(int i=0;i<len;i++)
        for(int j=0;j<len;j++)
            B[bx+i][by+j]=A[ax+j][ay+i];
}
// copy a block of elements from B to B (without transpose)
void copyb(int M,int N,int A[N][M],int B[M][N],int len,int ax,int ay,int bx,int by)
{
    for(int i=0;i<len;i++)
        for(int j=0;j<len;j++)
            B[bx+i][by+j]=B[ax+i][ay+j];
}
// swap two blocks of elements from B to B
void swapb(int M,int N,int A[N][M],int B[M][N],int len,int ax,int ay,int bx,int by)
{
    for(int i=0;i<len;i++)
        for(int j=0;j<len;j++)
        {
            int tmp=B[bx+i][by+j];
            B[bx+i][by+j]=B[ax+i][ay+j];
            B[ax+i][ay+j]=tmp;
        }
}// magical trick to transpose 2 8*8 blocks
void work2(int M,int N,int A[N][M],int B[N][M],int x1,int y1,int x2,int y2)
{
    copya(M,N,A,B,4,x1,y1,y1,x1);
    copya(M,N,A,B,4,x2,y2,y2,x2);
    copya(M,N,A,B,4,x2,y2+4,y1,x1+4);
    copya(M,N,A,B,4,x2+4,y2,y2,x2+4);
    copya(M,N,A,B,4,x1,y1+4,y2+4,x2+4);
    copya(M,N,A,B,4,x1+4,y1,y2+4,x2);
    swapb(M,N,A,B,4,y1,x1+4,y2+4,x2);
    copyb(M,N,A,B,4,y2+4,x2+4,y1+4,x1);
    copya(M,N,A,B,4,x1+4,y1+4,y1+4,x1+4);
    copya(M,N,A,B,4,x2+4,y2+4,y2+4,x2+4);
}
// magical trick to transpose 3 8*8 blocks, where x1=y1
void work3(int M,int N,int A[N][M],int B[N][M],int x1,int y1,int x2,int y2,int x3,int y3)
{
    copya(M,N,A,B,4,x1,y1,y2,x2);
    copya(M,N,A,B,4,x1,y1+4,y3,x3);
    copya(M,N,A,B,4,x1+4,y1,y2,x2+4);
    copya(M,N,A,B,4,x1+4,y1+4,y3,x3+4);
    copyb(M,N,A,B,4,y2,x2,y1,x1);
    copyb(M,N,A,B,4,y2,x2+4,y1,x1+4);
    copyb(M,N,A,B,4,y3,x3,y1+4,x1);
    copyb(M,N,A,B,4,y3,x3+4,y1+4,x1+4);
    work2(M,N,A,B,x2,y2,x3,y3);
}
// get the id of cache in A
int getida(int x,int y)
{
    return (x*60+y)/8%32;
}
// get theid of cache in B
int getidb(int x,int y)
{
    return (x*68+y)/8%32;
}

/*
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. The REQUIRES and ENSURES from 15-122 are included
 *     for your convenience. They can be removed if you like.
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    if(N==32&&M==32)
    {
        // process the blocks not on diagnal first
        for(int i=0;i<2;i++)
            for(int j=2;j<4;j++)
                copya(M,N,A,B,8,j*8,i*8,i*8,j*8);
        for(int i=2;i<4;i++)
            for(int j=0;j<2;j++)
                copya(M,N,A,B,8,j*8,i*8,i*8,j*8);
        // magical trick to process diagnal blocks
        for(int i=0;i<3;i+=2)
        {
            copya(M,N,A,B,8,i*8+8,i*8+8,i*8+8,i*8);
            copyb(M,N,A,B,8,i*8+8,i*8,i*8+8,i*8+8);
            copya(M,N,A,B,8,i*8,i*8+8,i*8+8,i*8);
            copya(M,N,A,B,8,i*8,i*8,i*8,i*8+8);
            copyb(M,N,A,B,8,i*8,i*8+8,i*8,i*8);
            copya(M,N,A,B,8,i*8+8,i*8,i*8,i*8+8);
        }
    }
    else if(N==64&&M==64)
    {
        // split the whole matrix into four 32*32 blocks
        // split the 32*32 block into four 16*16 blocks
        for(int i=0;i<32;i+=16)
            for(int j=32;j<64;j+=16)
            {
                work2(M,N,A,B,i,j,i+8,j+8);
                work2(M,N,A,B,i+8,j,i,j+8);
            }
        for(int i=32;i<64;i+=16)
            for(int j=0;j<32;j+=16)
            {
                work2(M,N,A,B,i,j,i+8,j+8);
                work2(M,N,A,B,i+8,j,i,j+8);
            }
        // magical trick to process diagnal 32*32 blocks
        for(int i=0;i<33;i+=32)
        {
            work3(M,N,A,B,i,i,i+24,i,i+16,i+8);
            work3(M,N,A,B,i+8,i+8,i,i+8,i+24,i+16);
            work3(M,N,A,B,i+16,i+16,i+24,i+8,i,i+16);
            work3(M,N,A,B,i+24,i+24,i+8,i+16,i,i+24);
            work2(M,N,A,B,i+8,i,i+16,i+24);
            work2(M,N,A,B,i+16,i,i+8,i+24);
        }
    }
    else
    {
        // process matrix every 8 rows
        for(int i=0;i<68;i+=8)
        {
            int mxi=i<64?8:4;
            // first 4 columns
            for(int bi=i+1;bi<i+mxi;bi+=2)
                for(int bj=0;bj<4;bj++)
                    B[bj][bi]=A[bi][bj];
            // process remaining columns
            for(int j=0;j<60;j+=8)
            {
                int mxj=j<56?8:4;
                for(int bi=i;bi<i+mxi;bi+=2)
                {
                    int tmp=-1;
                    for(int bj=j;bj<j+mxj;bj++)
                    {
                        int aid=getida(bi,bj);
                        int bid=getidb(bj,bi);
                        // lazy process elements that causes cache miss
                        if(aid==bid)
                            tmp=bj;
                        else
                            B[bj][bi]=A[bi][bj];
                    }
                    if(tmp>-1)
                        B[tmp][bi]=A[bi][tmp];
                }
                for(int bi=i+1;bi<i+mxi;bi+=2)
                {
                    int tmp=-1;
                    for(int bj=j+4;bj<j+12&&bj<M;bj++)
                    {
                        int aid=getida(bi,bj);
                        int bid=getidb(bj,bi);
                        // lazy process elements that causes cache miss
                        if(aid==bid)
                            tmp=bj;
                        else
                            B[bj][bi]=A[bi][bj];
                    }
                    if(tmp>-1)
                        B[tmp][bi]=A[bi][tmp];
                }
            }
        }
    }
}
/*
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started.
 */

char transpose_test_desc[] = "Transpose test";
void transpose_test(int M, int N, int A[N][M], int B[M][N])
{   
    if(N==32&&M==32)
    {
        for(int i=0;i<2;i++)
            for(int j=2;j<4;j++)
                copya(M,N,A,B,8,j*8,i*8,i*8,j*8);
        for(int i=2;i<4;i++)
            for(int j=0;j<2;j++)
                copya(M,N,A,B,8,j*8,i*8,i*8,j*8);
        for(int i=0;i<3;i+=2)
        {
            copya(M,N,A,B,8,i*8+8,i*8+8,i*8+8,i*8);
            copyb(M,N,A,B,8,i*8+8,i*8,i*8+8,i*8+8);
            copya(M,N,A,B,8,i*8,i*8+8,i*8+8,i*8);
            copya(M,N,A,B,8,i*8,i*8,i*8,i*8+8);
            copyb(M,N,A,B,8,i*8,i*8+8,i*8,i*8);
            copya(M,N,A,B,8,i*8+8,i*8,i*8,i*8+8);
        }
    }
    if(N==64&&M==64)
    {
        for(int i=0;i<32;i+=16)
            for(int j=32;j<64;j+=16)
            {
                work2(M,N,A,B,i,j,i+8,j+8);
                work2(M,N,A,B,i+8,j,i,j+8);
            }
        for(int i=32;i<64;i+=16)
            for(int j=0;j<32;j+=16)
            {
                work2(M,N,A,B,i,j,i+8,j+8);
                work2(M,N,A,B,i+8,j,i,j+8);
            }
        for(int i=0;i<33;i+=32)
        {
            work3(M,N,A,B,i,i,i+24,i,i+16,i+8);
            work3(M,N,A,B,i+8,i+8,i,i+8,i+24,i+16);
            work3(M,N,A,B,i+16,i+16,i+24,i+8,i,i+16);
            work3(M,N,A,B,i+24,i+24,i+8,i+16,i,i+24);
            work2(M,N,A,B,i+8,i,i+16,i+24);
            work2(M,N,A,B,i+16,i,i+8,i+24);
        }
    }
    else
    {
        for(int i=0;i<68;i+=8)
        {
            int mxi=i<64?8:4;
            for(int bi=i+1;bi<i+mxi;bi+=2)
                for(int bj=0;bj<4;bj++)
                    B[bj][bi]=A[bi][bj];
            for(int j=0;j<60;j+=8)
            {
                int mxj=j<56?8:4;
                for(int bi=i;bi<i+mxi;bi+=2)
                {
                    int tmp=-1;
                    for(int bj=j;bj<j+mxj;bj++)
                    {
                        int aid=getida(bi,bj);
                        int bid=getidb(bj,bi);
                        if(aid==bid)
                            tmp=bj;
                        else
                            B[bj][bi]=A[bi][bj];
                    }
                    if(tmp>-1)
                        B[tmp][bi]=A[bi][tmp];
                }
                for(int bi=i+1;bi<i+mxi;bi+=2)
                {
                    int tmp=-1;
                    for(int bj=j+4;bj<j+12&&bj<M;bj++)
                    {
                        int aid=getida(bi,bj);
                        int bid=getidb(bj,bi);
                        if(aid==bid)
                            tmp=bj;
                        else
                            B[bj][bi]=A[bi][bj];
                    }
                    if(tmp>-1)
                        B[tmp][bi]=A[bi][tmp];
                }
            }
        }
    }
}

 /*
  * trans - A simple baseline transpose function, not optimized for the cache.
  */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }

    ENSURES(is_transpose(M, N, A, B));
}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc);
    registerTransFunction(transpose_test,transpose_test_desc);
    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc);

}

/*
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

