
#Makefile for "mathBasic" C++ application (Cont.)
#Created by Claudio da Cruz Silva Junior 03/04/2018 main.o :
PROG = executavel
INC_DIR = include
SRC_DIR = src
OBJ_DIR = build
LIB_DIR = lib
BIN_DIR = bin

CC = g++
CFLAGS = -Wall -pedantic -std=c++11 -I./$(INC_DIR)
ARQUIVE = ar

linux: mathBasic.a mathBasic.so prog_estatico prog_dinamico 

mathBasic.a: $(SRC_DIR)/mathBasic.cpp $(INC_DIR)/mathBasic.h
	$(CC) $(CFLAGS) -c $(SRC_DIR)/mathBasic.cpp -o $(OBJ_DIR)/mathBasic.o
	$(ARQUIVE) rcs $(LIB_DIR)/$@ $(OBJ_DIR)/mathBasic.o
	@echo "+++ [Biblioteca estatica criada em $(LIB_DIR)/$@]+++"

mathBasic.so: $(SRC_DIR)/mathBasic.cpp $(INC_DIR)/mathBasic.h
	$(CC) $(CFLAGS) -fPIC -c $(SRC_DIR)/mathBasic.cpp -o $(OBJ_DIR)/mathBasic.o
	$(CC) -shared -fPIC -o $(LIB_DIR)/$@ $(OBJ_DIR)/mathBasic.o
	@echo "+++ [Biblioteca dinâmica criada em $(LIB_DIR)/$@]+++"

prog_estatico:
	$(CC) $(CFLAGS) $(SRC_DIR)/main.cpp $(LIB_DIR)/mathBasic.a -o $(BIN_DIR)/$@

prog_dinamico:
	$(CC) $(CFLAGS) $(SRC_DIR)/main.cpp $(LIB_DIR)/mathBasic.so -o $(BIN_DIR)/$@  

clean:
	@echo "Removendo arquivos objetos e executáveis/binários..."
	@rm -rf $(OBJ_DIR)/* 