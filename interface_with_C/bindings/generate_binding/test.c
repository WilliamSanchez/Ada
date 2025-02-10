#include "test.h"

int funct_cnt = 0;

int my_func (int a)
{
	funct_cnt++;
	return a*2;
}
