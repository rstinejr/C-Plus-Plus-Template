##############

MY_BIN_CFLAGS  = -g -O0 
MY_BIN_LDFLAGS = -lstdc++ -lrt

PGM  = array
INCS = includes
LIB_OBJS = objs/Board.o
OBJS = main.o
SRC  = src

.PHONY:	clean run 

all:	$(PGM)

main.o:	main.cpp $(INCS)/Board.hpp
	g++ -Wall -g $(MY_BIN_CFLAGS) -I$(INCS) -c main.cpp -o $@

objs:   
	mkdir objs

objs/Board.o:	objs $(SRC)/Board.cpp $(INCS)/Board.hpp
	g++ -Wall -g $(MY_BIN_CFLAGS) -I$(INCS) -c $(SRC)/Board.cpp -o $@
	
$(PGM):	$(OBJS) $(LIB_OBJS)
	g++ -o $@ $(OBJS) $(LIB_OBJS) $(MY_BIN_LDFLAGS)

test:	$(LIB_OBJS)
	make -C test test
		
clean:
	rm -f  $(PGM) $(OBJS) $(LIB_OBJS)
	make -C test clean
		
run:	$(PGM)
	./$(PGM)
