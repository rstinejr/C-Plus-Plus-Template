##############

MY_BIN_CFLAGS  = -g -O0
MY_BIN_LDFLAGS = -lstdc++ -lrt -lboost_unit_test_framework

PGM  = testBoard
INCS = ../includes
OBJS = testBoard.o ../Board.o

.PHONY:	clean run 

all:	$(PGM)

testBoard.o:	testBoard.cpp $(INCS)/Board.hpp
	g++ -Wall -g $(MY_BIN_CFLAGS) -I$(INCS) -c testBoard.cpp -o $@

$(PGM):	$(OBJS)
	g++ -o $@ $(OBJS) $(MY_BIN_LDFLAGS)

clean:
	rm -f  $(PGM) $(OBJS)

test:	$(PGM)
	./$(PGM)
