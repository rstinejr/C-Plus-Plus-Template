##############

MY_BIN_CFLAGS  = -g -O0
MY_BIN_LDFLAGS = -lstdc++ -lrt -lboost_unit_test_framework

PGM  = testBoard
OBJS = testBoard.o ../Board.o

.PHONY:	clean run 

all:	$(PGM)

.o:	testBoard.cpp ../Board.hpp
	g++ -Wall -g $(MY_BIN_CFLAGS) -c testBoard.cpp -o $@

$(PGM):	$(OBJS)
	g++ -o $@ $(OBJS) $(MY_BIN_LDFLAGS)

clean:
	rm -f  $(PGM) $(OBJS)

test:	$(PGM)
	./$(PGM)
