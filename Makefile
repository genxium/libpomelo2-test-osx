CXX = gcc
CFLAGS = -g

all: out 

CLEANFILES = *.out test-tr_tcp.o *.gch 

out: test-tr_tcp.o 
	$(CXX) $(CFLAGS) test-tr_tcp.o -I ./include -i test.h libpomelo2.a libuv.a libopenssl.a 

test-tr_tcp.o: test-tr_tcp.c
	$(CXX) $(CFLAGS) -c test-tr_tcp.c -I ./include -i test.h

# ----------------------------- 
#  clean :
#  	rm -f $(CLEANFILES)
