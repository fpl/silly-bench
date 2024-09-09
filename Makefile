#
# Makefile to build and run stuff
#

# Build some code snippets before run...

all: code code_rs Code.class

CFLAGS=-O3
code: code.c

code_rs: code.rs
	-rustc -o code_rs code.rs

.SUFFIXES: .java .class
.java.class:
	javac $*.java

Code.Class: Code.java

# This is to run tests...

run: 
	./run.sh

clean:
	-rm -f code
	-rm -f code_rs
	-rm -f Code.class

.PHONY: run clean
