.PHONY: all
all: hello

hello: src/hello.c
    cc -o hello src/hello.c

test: hello
    ./hello | grep -q 'Hello'

.PHONY: clean
clean:
    rm -f hello

