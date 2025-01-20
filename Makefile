mandel:	movie.h movie.c mandel.h mandel.c bmp.c bmp.h bmp_wr.c
	gcc -g -c bmp.c 
	gcc -g -c bmp_wr.c 
	gcc -g -c mandel.c
	gcc -g -c movie.c
	gcc bmp.o bmp_wr.o mandel.o movie.o -lpthread -o mandel

run: mandel
	./mandel	

clean:
	rm *.o mandel

clean_data:
	rm frames/*
