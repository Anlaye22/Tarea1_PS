# Variables
CC = gcc
CFLAGS = -Wall -g  # Activar todas las advertencias y modo de depuración
TARGET = sistema   # Nombre del ejecutable

# Archivos fuente
SRCS = Main.c R_sistema.c
# Archivos objeto generados a partir de los archivos fuente
OBJS = $(SRCS:.c=.o)
# Archivos ensamblador generados a partir de los archivos fuente
ASMS = $(SRCS:.c=.s)

# Regla para compilar el ejecutable final
$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET)

# Regla para compilar cada archivo fuente en un archivo objeto
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Regla para generar el código ensamblador de cada archivo fuente
%.s: %.c
	$(CC) -S $< -o $@

# Regla para limpiar los archivos generados (útil para recompilar desde cero)
.PHONY: clean
clean:
	rm -f $(OBJS) $(TARGET) $(ASMS)
