	.type minia, @function
	.global minia

minia:
	mov %rdi, %rax
	cmp %rsi, %rax
	jle next_c
	mov %rsi, %rax

next_c:
	cmp %rdx, %rax
	jle return
	mov %rdx, %rax

return:
	ret

