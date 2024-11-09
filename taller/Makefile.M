# Variables
CC = gcc
CFLAGS = -Wall -g  # Activar todas las advertencias y modo de depuración
TARGET = sistema   # Nombre del ejecutable

SRCS = main.c R_sistema.c Perimetro.c Area.c Superficie.c Volumen.c

OBJS = $(SRCS:.c=.o)

$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -f $(OBJS) $(TARGET)
