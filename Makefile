# Makefile
CC = gcc
CFLAGS = -g -Wall -O0
#LDFLAGS = 
LDLIBS = -lrt

EXE = stream
OBJS = stream.o
SHARE = 

.PHONY: all
all: $(EXE)

$(EXE): $(OBJS) $(SHARE)
	$(CC) -o $@ $(LDFLAGS) $(OBJS) $(LDLIBS)

.PHONY: clean
clean: 
	rm -f $(OBJS) $(SHARE)
