#----------------------------------------------------------------
# Funkcja do programu lab_7a - Asemblery Laboratorium IS II rok
#----------------------------------------------------------------

	.text
	.type facta, @function
	.globl facta	

facta:	mov $1, %rax		#Rejestr zwracany na poczatku 1 

next:	cmp $1, %rdi		#czy przekazany parametr mniejszy od 1
	jbe f_e			#tak to skocz do f_e
	mul %rdi
	dec %rdi
	jmp next

f_e:	ret

