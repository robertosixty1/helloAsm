BITS 64

global _start

segment .data

hello: db "Hello, world!", 10
hello_sz: equ $-hello

segment .text

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, hello
	mov rdx, hello_sz
	syscall

	mov rax, 60
	mov rdi, 1
	syscall

