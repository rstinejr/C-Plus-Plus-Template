##############

INCS = includes
MY_CFLAGS = -c -g -O0 -Wall -I$(INCS)
MY_LDFLAGS = -lstdc++ -lrt
OBJS = objs/main.o objs/Board.o

PGM  = array

##############

.PHONY:	clean run test

all: $(PGM)

-include deps/*

objs/%.o:	src/%.cpp
	@[ -d objs ] || mkdir objs
	@[ -d deps ] || mkdir deps
	g++ $(MY_CFLAGS) -MMD -MF"$(@:objs/%.o=deps/%.d)" -o"$@" "$<"

$(PGM):	$(OBJS)
	g++ -o $@ $(OBJS) $(MY_LDFLAGS) 

test:	$(OBJS)
	make -C test test
		
clean:
	rm -rf deps objs $(PGM)
	make -C test clean
		
run:	$(PGM)
	./$(PGM)
