# cfklp Makefile

.PHONY: clean test

STATIC = -static
CFLAGS = -Wall -I/usr/pkg/include
LDFLAGS = -L/usr/pkg/lib
LIBS = -lps -lm -lintl

cfklp: util.o cfklp.o main.o
	$(CC) $(STATIC) -o $(.TARGET) $(.ALLSRC) $(LDFLAGS) $(LIBS)

.c.o:
	$(CC) -c -o $(.TARGET) $(CFLAGS) $(.ALLSRC)

clean:
	rm -f cfklp *.o *.core *.ps *.pdf

test:
	./cfklp test.txt out.ps
