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

j1: ./intel/jump/j1.S
	${ASMCC} ${ASMCCFLAGS} -felf64 ./intel/jump/j1.S -o j1.o
	${C} caller.c j1.o -o j1.bin

j2: ./intel/jump/j2.S
	${ASMCC} ${ASMCCFLAGS} -felf64 ./intel/jump/j2.S -o j2.o
	${C} caller.c j2.o -o j2.bin

cmp: ./intel/flags/cmp.S
	${ASMCC} ${ASMCCFLAGS} -felf64 ./intel/flags/cmp.S -o cmp.o
	${C} caller.c cmp.o -o cmp.bin
qe: ./intel/flags/qe.S
	${ASMCC} ${ASMCCFLAGS} -felf64 ./intel/flags/qe.S -o qe.o
	${C} caller.c qe.o -o qe.bin

above_below: ./intel/flags/above_below.S
	${ASMCC} ${ASMCCFLAGS} -felf64 ./intel/flags/above_below.S -o above_below.o
	${C} caller.c above_below.o -o above_below.bin

loop: ./intel/flags/loop.S
	${ASMCC} ${ASMCCFLAGS} -felf64 ./intel/flags/loop.S -o loop.o
	${C} caller.c loop.o -o loop.bin

of: ./intel/flags/of.S
	${ASMCC} ${ASMCCFLAGS} -felf64 ./intel/flags/of.S -o of.o
	${C} caller.c of.o -o of.bin

and_or: ./intel/logic/and_or.S
	${ASMCC} ${ASMCCFLAGS} -felf64 ./intel/logic/and_or.S -o and_or.o
	${C} caller.c and_or.o -o and_or.bin

clean:
	rm *.o
	rm *.bin