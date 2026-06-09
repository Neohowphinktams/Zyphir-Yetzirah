# Makefile - The Spoken Execution
# Part 3 of the 3x3 Manifestation

CC = gcc
CFLAGS = -Wall -Wextra -O2 -Iinclude

# Edit 8: Define targets and the output archive library
TARGET_LIB = libyetzirah.a
OBJS = src/yetzirah.o

all: $(TARGET_LIB)

$(TARGET_LIB): $(OBJS)
	ar rcs $@ $^

src/yetzirah.o: src/yetzirah.c
	$(CC) $(CFLAGS) -c $< -o $@

# Edit 9: Define the clean utility to reset the matrix
clean:
	rm -f src/*.o $(TARGET_LIB)

.PHONY: all clean
