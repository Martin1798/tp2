# Compilador a utilizar
CC=gcc

# Opciones de compilación
CFLAGS=-c -Wall

# Directorios de origen y destino
SRC_DIR=src
OBJ_DIR=build/obj
BIN_DIR=build/bin

# Archivos fuente y objeto
SOURCES=$(wildcard $(SRC_DIR)/*.c)
OBJECTS=$(patsubst $(SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(SOURCES))
EXECUTABLE=$(BIN_DIR)/programa

# Regla por defecto: construir el ejecutable
all: $(EXECUTABLE)

# Regla para construir el ejecutable
$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) -o $(EXECUTABLE)

# Regla para construir los objetos
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) $< -o $@

# Limpiar archivos generados
clean:
	rm -rf $(OBJ_DIR)/*.o $(BIN_DIR)/programa