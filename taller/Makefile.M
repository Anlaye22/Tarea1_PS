CC = gcc
CFLAGS = -Wall
SOURCES = Main.c Perimetro.c Area.c Superficie.c Volumen.c
OBJECTS = $(SOURCES:.c=.o)
ASSEMBLY = $(SOURCES:.c=.s)
all: $(OBJECTS) $(ASSEMBLY)
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@
%.s: %.c
	$(CC) $(CFLAGS) -S $< -o $@
clean:
	rm -f $(OBJECTS) $(ASSEMBLY)