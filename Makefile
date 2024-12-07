CC = nasm

8exit: 8exit.o
	gcc -nostdlib 8exit.o -o 8exit.bin

8exit.o: ./intel/8exit.S
	${CC} -felf64 ./intel/8exit.S -o 8exit.o
clean:
	rm *.o
	rm *.bin