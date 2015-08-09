##############

MY_BIN_CFLAGS  = -g -O0 
MY_BIN_LDFLAGS = -lstdc++ -lrt

PGM  = array
OBJS = array.o

.PHONY:	clean run 

all:	$(PGM)

array.o:	array.cpp
	g++ -Wall -g $(MY_BIN_CFLAGS) -c array.cpp -o $@
	
TicTacToe.o:	TicTacToe.cpp TicTacToe.hpp
	g++ -Wall -g $(MY_BIN_CFLAGS) -c TicTacToe.cpp -o $@

$(PGM):	$(OBJS)
	g++ -o $@ $(OBJS) $(MY_BIN_LDFLAGS)

clean:
	rm -f  $(PGM) $(OBJS)

run:	$(PGM)
	./$(PGM)
