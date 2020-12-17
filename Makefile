all: hello

hello: hello.o
	gcc -Wall hello.o -o hello

hello.o: hello.c
	gcc -c -Wall hello.c

test: hello
	./hello | grep -q 'Hello'

clean:
	rm -rf *.o hello

