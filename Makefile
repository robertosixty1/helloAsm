all: hello

hello.o: hello.asm
	yasm -felf64 hello.asm

hello: hello.o
	ld -o hello hello.o
