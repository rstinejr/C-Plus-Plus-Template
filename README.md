# C-Plus-Plus-Template

C++ project boilerplate

# Simple C++ project with Makefile

Makefile that can be used by Eclipse CDT to create an Eclipse project.

Targets:
* all   - build $(PGM)
* test  - build and run unit tests.
* clean - delete all generated files.

The Makefile is a "calling stub". It defines variables PGM, INCS,
MY_CFLAGS, and MY_LDFLAGS. It also defines target "run". 

File Makefile.inc is the generic part of the build, and could be used with
little or no change in any project that generates an executable. It
could be readily tweadked for projects that generate libraries.

Source C++ files are expected to end in "*.cpp" and reside in
directory "src".
