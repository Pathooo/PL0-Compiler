#Makefile
CC ?=		cc
CFLAGS ?=	-g -O2 

PROG =	pl0c

all: pl0c

pl0c: 
	${CC} ${PROG}.c -o ${PROG} 

hello: pl0c 
	./pl0c < hello.pl0 > hello.txt
	cc -O -o hello -x c - < hello.txt
	./hello
fizz: pl0c
	./pl0c < fizz.pl0 > fizz.txt
	cc -O -o fizz -x c - < fizz.txt
	./fizz
factorial: pl0c
	./pl0c < factorial.pl0 > factorial.txt
	cc -O -o factorial -x c - < factorial.txt
	./factorial
primes: pl0c
	./pl0c < primes.pl0 > primes.txt
	cc -O -o primes -x c - < primes.txt
	./primes
writeinteger: pl0c
	./pl0c < writeinteger.pl0 > writeinteger.txt
	cc -O -o writeinteger -x c - < writeinteger.txt
	./writeinteger

clean:
	rm -f ${PROG} *.txt *.exe
