##############

INCS = includes
MY_CFLAGS = -c -g -O0 -Wall -I$(INCS)
MY_LDFLAGS = -lstdc++ -lrt
OBJS = objs/main.o objs/Board.o
PGM = array

##############

.PHONY:	clean run test

all: $(PGM)

objs/Board.o:	includes/Board.hpp

objs/main.o:	includes/Board.hpp

./objs/%.o:	./src/%.cpp
	[ -d objs ] || mkdir objs
	g++ $(MY_CFLAGS) $< -o $@

$(PGM):	$(OBJS)
	g++ -o $@ $(OBJS) $(MY_LDFLAGS) 

test:	$(OBJS)
	make -C test test
		
clean:
	rm -rf objs $(PGM)
	make -C test clean
		
run:	$(PGM)
	./$(PGM)
