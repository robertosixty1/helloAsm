BITS 64

global _start

segment .data

hello: db "Hello, world!", 10
hello_sz: equ $-hello

another_message: db "That's another message!", 10
another_message_sz: equ $-another_message

segment .text

_start:
	mov rax, 1 		    ; number of the syscall
	mov rdi, 1		    ; stdout file descriptor
	mov rsi, hello		    ; memory address where the "Hello, world!\n" is located
	mov rdx, hello_sz	    ; memory address where the hello size is located
	syscall			    ; perform the syscall

	mov rax, 1		    ; number of the syscall
	mov rdi, 1		    ; stdout file descriptor
	mov rsi, another_message    ; memory address where another message is located
	mov rdx, another_message_sz ; memory address where another message size is located
	syscall			    ; perform the syscall

	mov rax, 60
	mov rdi, 0
	syscall

