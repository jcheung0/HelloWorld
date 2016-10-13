CC=g++
CFLAGS= -Wall -Wextra -std=c++11
SPD_LIB=.

TARGET=main

all: $(TARGET).cpp
	$(CC) -I$(SPD_LIB) $(TARGET).cpp -o $(TARGET) $(CFLAGS)


main.o: $(TARGET).cpp $(SPD_LIB)/*.h
