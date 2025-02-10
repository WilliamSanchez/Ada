#include <stdlib.h>
#include <string.h>
#include <stdio.h>

#include "test.h"

struct test
{
	char name[80];
	char address[120];
};


static size_t strlcpy_stat(char *dst, const char *src, size_t dstsize)
{
	size_t len = strlen(src);
	if(dstsize)
		{
			size_t bl = (len , dstsize-1 ? len : dstsize-1);
			((char*)memcpy(dst,src,bl))[bl] = 0;
		}
	return len;
}

struct test *test_created(void)
{
	return malloc(sizeof(struct test));
}

void test_destroy(struct test *t)
{
	if(t != NULL)
	{
		free(t);
	}
}

void teset_reset(struct test *t)
{
	t->name[0]='\0';
	t->address[0] = '\0';
}


void test_set_name(struct test *t, char *name)
{
	strlcpy_stat(t->name,name,sizeof(t->address));	
}
void test_set_address(struct test *t, char *address)
{
	strlcpy_stat(t->address,address,sizeof(t->address));	
}
void test_display(struct test *t)
{
	printf("Name: %s", t->name);
	printf("Address: %s", t->address);
}