# Makefile
CC = gcc
CFLAGS = -g -Wall -O0
#LDFLAGS = 
#LDLIBS = 

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
