global loader ; entry symbol for ELF

MAGIC_NUMBER	equ	0x1BADB002	; magic constant
FLAGS		equ	0x0		;multiboot flags
CHECKSUM	equ	-MAGIC_NUMBER

section .text:
align 4

	dd MAGIC_NUMBER
	dd FLAGS
	dd CHECKSUM

loader:
	mov	eax, 0xCAFEBABE
loop:
	jmp	loop
