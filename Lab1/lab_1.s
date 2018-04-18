#----------------------------------------------------------------
# Program lab_1.s - Asemblery Laboratorium IS II rok
#----------------------------------------------------------------
#
#  To compile: as -o lab_1.o lab_1.s
#  To link:    ld -o lab_1 lab_1.o
#  To run:     ./lab_1
#
#----------------------------------------------------------------

	.equ	write_64, 1	## 1 # write data to file function (64bit)
	.equ	exit_64, 60 	##60	# exit program function (64bit)
	.equ	stdout, 0x01	# handle to stdout

	.data
	
starttxt:			# first message
	.ascii	"Start\n"
endtxt:				# second message
	.ascii	"Finish\n"
arg1:				# first argument
	.byte		1
arg2:				# second argument
	.word		2	#.word - rezerwacja miejsca o rozmiarze 2 Bajty
arg3:				# third argument
	.long		3	#.long - rezerwacja miejsca o rozmiarze 4 Bajty
result:				# result
	.long		0	

	.equ	startlen, endtxt - starttxt	#Różnica adresów w Bajtach, wielkość danych, długość napisu pod adresem starttxt 
	.equ	endlen, arg1 - endtxt
 
	.text
	.global _start
	
_start:
	MOV	$write_64,%rax		#MOV - uogólnione przeniesienie danych z jednego miejsca w drugie 
	MOVQ	$stdout,%rdi		#MOVQ - przeniesienie danych wyspecjalizowanego typu, Q - 8Bajtów
	MOV	$starttxt,%rsi		#Przeważnie surfiksy do MOV[{B,W,L,Q}] są nie wymagane
	MOVQ	$startlen,%rdx
	SYSCALL

	NOP 
		#Przetwarzanie danych 

	MOVB	arg1,%al	#B - przeniesie 1 Bajt
	MOVW	arg2,%bx	#W - Przenieisie 2 Bajty
	MOVL	arg3,%ecx	#L  - Przeniesie 4 Bajty
	ADD	%ebx,%eax	#%eax = %eax + %ebx
	SUB	%ecx,%eax	#%eax  = %eax - %ecx
	MOVL	%eax,result

	NOP

	MOV	$write_64,%rax		#Stałe muszą zaczynać się od $
	MOVQ	$stdout,%rdi
	MOV	$endtxt,%rsi
	MOVQ	$endlen,%rdx
	SYSCALL			#Wywołanie do systemu rejestry 32 bitowe zaczynają się od %e. 64-bitoer rejestry zaczynają się od %r

	NOP

theend:
	MOV	$exit_64,%rax
	SYSCALL

