cc = g++
CXXFLAGS = -std=c++11 -Wall -O3 -g -DNDEBUG -pthread
LDFLAGS = -lpthread -pthread

EXECUTABLES = main.o

all: $(EXECUTABLES)

main: main.cpp
	$(cc) $(CXXFLAGS) $^ -o $@ $(LDFLAGS)


