##############
# Project-specify part of Make script.
# Tempplate build commands are in Makefile.inc.
#
# Targets:
#     all   - build $(PGM)
#     run   - build and run $(PGM)
#     test  - build and run unit tests.
#     clean - delete all generated files.
#
INCS = includes
MY_CFLAGS = -c -g -O0 -Wall -I$(INCS)
MY_LDFLAGS = -lstdc++ -lrt

PGM  = array

.PHONY:	run

include Makefile.inc
		
run:	$(PGM)
	./$(PGM)
