all: Activate
%.o: %.c afc.h
	gcc -std=gnu99 -c -o $@ $<

Activate: Activate.o afc.o
	gcc -o Activate Activate.o afc.o -limobiledevice -lplist -lcrypto

clean:
	rm -rf Activate *.o *.dSYM
