all: mycopy_eqfilesize_buffer mycopy_1KB_buffer mycopy_10KB_buffer mycopy_100KB_buffer mycopy_100B_buffer 
mycopy_1KB_buffer: mycopy_1KB_buffer.c
	gcc mycopy_1KB_buffer.c -o mycopy_1KB_buffer.o

mycopy_10KB_buffer: mycopy_10KB_buffer.c
	gcc mycopy_10KB_buffer.c -o mycopy_10KB_buffer.o

mycopy_100KB_buffer: mycopy_100KB_buffer.c
	gcc mycopy_100KB_buffer.c -o mycopy_100KB_buffer.o

mycopy_100B_buffer: mycopy_100B_buffer.c
	gcc mycopy_100B_buffer.c -o mycopy_100B_buffer.o

mycopy_eqfilesize_buffer: mycopy_eqfilesize_buffer.c
	gcc mycopy_eqfilesize_buffer.c -o mycopy_eqfilesize_buffer.o

clear:
	rm -f *.o 
	rm -f *.txt