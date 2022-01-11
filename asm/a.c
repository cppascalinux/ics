void fun(long *a,long *b)
{
	long t=*a;
	*a=*b;
	*b=t;
}