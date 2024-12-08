ASMCC = nasm
ASMCCFLAGS = -g -O0
C = gcc
CFLAGS = -nostdlib -g

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

reg1: ./intel/registers/reg1.S
	${ASMCC} ${ASMCCFLAGS} -felf64 ./intel/registers/reg1.S -o reg1.o
	${C} ${CFLAGS} reg1.o -o reg1.bin

reg2: ./intel/registers/reg2.S
	${ASMCC} ${ASMCCFLAGS} -felf64 ./intel/registers/reg2.S -o reg2.o
	${C} caller.c reg2.o -o reg2.bin


reg3: ./intel/registers/reg3.S
	${ASMCC} ${ASMCCFLAGS} -felf64 ./intel/registers/reg3.S -o reg3.o
	${C} caller.c reg3.o -o reg3.bin

add: ./intel/math/add.S
	${ASMCC} ${ASMCCFLAGS} -felf64 ./intel/math/add.S -o add.o
	${C} caller.c add.o -o add.bin

sub: ./intel/math/sub.S
	${ASMCC} ${ASMCCFLAGS} -felf64 ./intel/math/sub.S -o sub.o
	${C} caller.c sub.o -o sub.bin

inc: ./intel/math/inc.S
	${ASMCC} ${ASMCCFLAGS} -felf64 ./intel/math/inc.S -o inc.o
	${C} caller.c inc.o -o inc.bin

inc2: ./intel/math/inc2.S
	${ASMCC} ${ASMCCFLAGS} -felf64 ./intel/math/inc2.S -o inc2.o
	${C} caller.c inc2.o -o inc2.bin

mul: ./intel/math/mul.S
	${ASMCC} ${ASMCCFLAGS} -felf64 ./intel/math/mul.S -o mul.o
	${C} caller.c mul.o -o mul.bin

inv: ./intel/math/inv.S
	${ASMCC} ${ASMCCFLAGS} -felf64 ./intel/math/inv.S -o inv.o
	${C} caller.c inv.o -o inv.bin


clean:
	rm *.o
	rm *.bin