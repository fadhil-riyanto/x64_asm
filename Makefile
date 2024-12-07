CC = nasm

all: 8exit.o hello.o
	gcc -nostdlib 8exit.o -o 8exit.bin
	gcc -nostdlib hello.o -o hello.bin

8exit.o: ./intel/8exit.S
	${CC} -felf64 ./intel/8exit.S -o 8exit.o

hello.o: ./intel/hello.S
	${CC} -felf64 ./intel/hello.S -o hello.o

clean:
	rm *.o
	rm *.bin