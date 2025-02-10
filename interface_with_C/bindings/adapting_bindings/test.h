struct test;

struct test *test_created(void);
void test_destroy(struct test *t);
void test_reset(struct test *t);
void test_set_name(struct test *t, char *name);
void test_set_address(struct test *t, char *address);
void test_display(struct test *t);