CC = gcc
FLAGS = -Wall -pedantic -lpthread
SOURCES = src/main.cpp

all: main

main:
	$(CC) $(SOURCES) -o main $(FLAGS)

clean:
	find . -type f -executable -not -name "*.c" -not -name "makefile" -delete

run: all
	./main