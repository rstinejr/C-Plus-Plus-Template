##############

MY_BIN_CFLAGS  = -g -O0 
MY_BIN_LDFLAGS = -lstdc++ -lrt

PGM  = array
INCS = includes
OBJS = main.o Board.o

.PHONY:	clean run 

all:	$(PGM)

main.o:	main.cpp $(INCS)/Board.hpp
	g++ -Wall -g $(MY_BIN_CFLAGS) -I$(INCS) -c main.cpp -o $@

Board.o:	Board.cpp $(INCS)/Board.hpp
	g++ -Wall -g $(MY_BIN_CFLAGS) -I$(INCS) -c Board.cpp -o $@
	
$(PGM):	$(OBJS)
	g++ -o $@ $(OBJS) $(MY_BIN_LDFLAGS)

test:	Board.o
	make -C test test
		
clean:
	rm -f  $(PGM) $(OBJS)
	make -C test clean
		
run:	$(PGM)
	./$(PGM)
