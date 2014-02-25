SWIG = swig
CC = gcc
LD = $(CC)

SWIG_DIR = ../swig/
SWIG_FLAGS = -lua -outcurrentdir

TARGET = fdb_c.so
FDB_C_LIB = /usr/lib/libfdb_c.so
OBJECTS = fdb_c_wrap.o

LUA_BIN = /usr/bin/lua
LUA_FLAGS = -fPIC -shared -I/usr/include/lua5.2
CFLAGS = $(LUA_FLAGS)
LDFLAGS = -fPIC -shared -I/usr/include/lua5.2 -L/usr/lib/lua5.2

LUA_TEST = ./test/test.lua

%_wrap.c: $(SWIG_DIR)%.i
	$(SWIG) $(SWIG_FLAGS) $<

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

$(TARGET): $(OBJECTS)
	$(LD) $(OBJECTS) $(FDB_C_LIB) $(LDFLAGS) -o $@

all:$(TARGET)

test:
	$(LUA_BIN) $(LUA_TEST)

clean:
	rm -rf $(TARGET) *_wrap.c *.o

.PHONY: all test clean
