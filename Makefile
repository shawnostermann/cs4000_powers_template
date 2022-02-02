CXX=g++
CPPFLAGS=-Wall -Werror -O2

TARGETS=boost_version my_parallel

all: ${TARGETS}


test: $(TARGETS)
	-chmod a+rx ./test.*
	-./test.17
	-./test.39
	-./test.55
	-./test.101
	-./test.1001
	-./test.s.10000
	-./test.s.9837
	-./test.s.10211
	-./test.s.10017
	-./test.s.9978
	

clean:
	rm -f $(TARGETS) *.o test.*.myoutput test.*.correct
