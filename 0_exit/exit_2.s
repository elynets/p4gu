section .data
msg	db "Hello, world!",0xa
len	egu $ - msg
section .text
global _start
_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, msg
	mov edx, len
	int 0x80
	mov eax, 1
	mov ebx, 0
	int 0x80