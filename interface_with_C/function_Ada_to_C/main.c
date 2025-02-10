#include <stdio.h>

extern int my_func (int a);

int main ()
{
	int v = my_func(2);
	printf("Result is %d\n",v);
	return 0;
}
