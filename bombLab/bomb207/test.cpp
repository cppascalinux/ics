#include<bits/stdc++.h>
using namespace std;
int n;
int p[14]={4,2,6,3,5,1,0,0,3,3,1,4,5,6};
int go(int t,int s)
{
	for(int i=0;i<n;i++)
		t=p[t+(s>>i&1)*7];
	return t;
}
int main()
{
	for(n=1;n<=17;n++)
	{
		for(int s=0;s<(1<<n);s++)
		{
			int res=-1,fg=0;
			for(int t=0;t<=6;t++)
			{
				int sm=go(t,s);
				if(res==-1)
					res=sm;
				else if(res!=sm)
				{
					// printf("t:%d\n",t);
					fg=1;
					break;
				}
			}
			if(!fg)
			{
				for(int i=0;i<n;i++)
					printf("%d",s>>i&1);
				return 0;
			}
		}
	}
	return 0;
}