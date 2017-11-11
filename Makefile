CC=gcc
CFLAGS= -ggdb
DEFAULT: my_shell

my_shell: my_shell.o
	$(CC) my_shell.o -o my_shell $(CFLAGS)
%.o : %.c
	$(CC) -c $(CFLAGS) $<
clean:
	/bin/rm my_shell times my_shell.o
strip:
	strip my_shell
