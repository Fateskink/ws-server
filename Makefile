flags=-Wall -O2 -std=c2x
ldflags=

all: clean tree

tree: tree.o
	cc ${flags} $^ -o $@ ${ldfags}

tree.o: tree.c
	cc ${flags} -c $^

clean:
	rm -f *.o tree
