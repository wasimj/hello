all: hello

hello: hello.o
	gcc -Wall hello.o -o hello

hello.o: hello.c
	gcc -c -Wall hello.c

clean:
	rm -rf *.o hello

