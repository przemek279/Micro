 //---------------------------------------------------------------
// Program lab_7b - Asemblery Laboratorium IS II rok
//
// To compile&link: gcc -o lab_7c lab_7c.c lab_7c_asm.s
// To run:          ./lab_7c
//
//---------------------------------------------------------------

#include <stdio.h>

int minic( int a,  int b,  int c) {
	 int min = a;
	if(b < min) min = b;
	if(c < min) min = c;
	
	return min;
}

long minia( long a,  long b,  long c);

int main() {
	
	printf("wC = %d wA = %d\n", minic(-3,2,-4), minia(-3,2,-4));
	return 0;
}
