//---------------------------------------------------------------
// Program lab_6a - Asemblery Laboratorium IS II rok
//
// To compile&link: gcc -o lab_6d lab_6d.c lab_6d_asm.s
// To run:          ./lab_6a
//
//---------------------------------------------------------------

#include <stdio.h>

long long sum3c(unsigned int a, unsigned int b, unsigned int c)
{
	return a+b+c;
}

long long sum3a(unsigned int a, unsigned int b, unsigned int c);

void main( void )
{
   printf( "Sum3C(1,2,3) = %ld FactA = %ld", sum3c(1,2,3), sum3a(1,2,3) );
}
