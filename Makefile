##############

INCS = includes
CFLAGS = -c -g -O0 -Wall -I$(INCS)
MY_LDFLAGS = -lstdc++ -lrt
OBJS = objs/main.o objs/Board.o
PGM = array

##############

.PHONY:	clean run 

all: $(PGM)

$(OBJS):	objs

objs/%.o:	src/%.cpp
	g++ $(CFLAGS) $< -o $@

objs:	
	mkdir objs

$(PGM):	$(OBJS)
	g++ $(MY_LDFLAGS) -o $@ $(OBJS) 

test:	$(OBJS)
	make -C test test
		
clean:
	rm -rf objs $(PGM)
	make -C test clean
		
run:	$(PGM)
	./$(PGM)
