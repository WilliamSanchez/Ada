#include <stdio.h>

extern int my_func (int a);
extern int func_cnt;

int main ()
{
	int v;
	v = my_func(1);
	v = my_func(2);
	v = my_func(3);
	printf("Result is %d\n",v);
	printf("Fucntion was called %d times %d\n",func_cnt);
	return 0;
}
