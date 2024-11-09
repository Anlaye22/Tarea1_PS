# Variables
CC = gcc
CFLAGS = -Wall -g  
TARGET = sistema   

SRCS = Main.c R_sistema.c

OBJS = $(SRCS:.c=.o)

ASMS = $(SRCS:.c=.s)


$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET)


%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@


%.s: %.c
	$(CC) -S $< -o $@


.PHONY: clean
clean:
	rm -f $(OBJS) $(TARGET) $(ASMS)
