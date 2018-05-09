#----------------------------------------------------------------
# Funkcja do programu lab_6a - Asemblery Laboratorium IS II rok
#----------------------------------------------------------------

	.text
	.type sum3a, @function
	.globl sum3a	

sum3a:
	mov %rdi, %rax
	add %rsi, %rax
	add %rdx, %rax
	ret


