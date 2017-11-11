CC=gcc
CFLAGS= -ggdb
DEFAULT: my_shell

my_shell: my_shell.o
	$(CC) my_shell.o -o my_shell $(CFLAGS)
%.o : %.c
	$(CC) -c $(CFLAGS) $<
clean:
	/bin/rm my_shell times my_shell.o times.o
strip:
	strip my_shell times 
val:
	valgrind --tool=memcheck --leak-check=yes --show-reachable=yes --track-origins=yes my_shell
