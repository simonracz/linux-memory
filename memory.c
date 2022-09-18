#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

int main() {
	size_t GB = 1024 * 1024 * 1024;
	char * mem = (char*) malloc(32 * GB);
	char * mem2 = (char*) malloc(32 * GB);
	if (mem == NULL || mem2 ==NULL) {
		printf("malloc failed\n");
		return EXIT_FAILURE;
	}
	for (size_t p = 0; p < 32 * GB; ++p) {
		mem[p] = 1;
	}
	while (1) {
		sleep(1);
	}
}
