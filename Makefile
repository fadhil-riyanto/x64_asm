ASMCC = nasm
C = gcc

all: 8exit.o hello.o 64_intcaller
	gcc -nostdlib 8exit.o -o 8exit.bin
	gcc -nostdlib hello.o -o hello.bin

8exit.o: ./intel/8exit.S
	${ASMCC} -felf64 ./intel/8exit.S -o 8exit.o

hello.o: ./intel/hello.S
	${ASMCC} -felf64 ./intel/hello.S -o hello.o

64_intcaller: ./intel/int64_ret/64_intcaller.c 
	${ASMCC} -felf64 ./intel/int64_ret/int64_ret.S -o int64_ret.o
	${C} int64_ret.o ./intel/int64_ret/64_intcaller.c -o int64_ret.bin


clean:
	rm *.o
	rm *.bin