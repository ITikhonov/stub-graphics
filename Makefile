CFLAGS=-g -Wall -Werror `pkg-config --cflags libglfw`
LDLIBS=`pkg-config --libs libglfw` -lGL

all:
	python ~/bin/tangle.py program.lit
	gcc $(CFLAGS) -o main main.c $(LDLIBS)

