#----------------------------------------------------------------
# Program lab_0a.s - Asemblery Laboratorium IS II rok
#----------------------------------------------------------------
#
#  To compile: as -o lab_0a.o lab_0a.s
#  To link:    ld -o lab_0a lab_0a.o
#  To run:     ./lab_0a
#
#----------------------------------------------------------------
#od kropki dyrektywy asemblera [dla kompilatora, ma wiedzieć co zrobić]
# asembler - narzędzie do komilacji, lub język 
#Deklaraca - rezerwacja miejsca w pamięci 
#

	.data
	
dummy:				# some data, dummy: - etykieta, wskazuje adres w którym się znqajdzie wrtość 0
	.byte	0x00		#rezerwacja jednego Bajta i przypisanie mu wartości 0

	.text			#od tego momenut kod programu. Już nie dane
	.global _start		# entry point, _start - symbol; symbole dyrektywy .global jest globalny 
	
_start:				#_start: - etykieta, tożsama z adresem
	JMP	_start		 #JMP - jump - instrukcja, argument etykieta _start
