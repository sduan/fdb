SWIG = swig
CC = gcc
LD = $(CC)

SWIG_DIR = ../swig/
SWIG_FLAGS = -perl5 -outcurrentdir

TARGET = fdb.so
FDB_C_LIB = /usr/lib/libfdb_c.so
OBJECTS = fdb_wrap.o

PERL_FLAGS = `perl -MConfig -e 'print join(" ", @Config{qw(ccflags optimize cccdlflags)}, "-I$$Config{archlib}/CORE")'`
CFLAGS = $(PERL_FLAGS)
LDFLAGS = -shared

%_wrap.c: $(SWIG_DIR)%.i
	$(SWIG) $(SWIG_FLAGS) $<

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

$(TARGET): $(OBJECTS)
	$(LD) $(OBJECTS) $(FDB_C_LIB) $(LDFLAGS) -o $@

all:$(TARGET)

clean:
	rm -rf $(TARGET) *.pm *_wrap.c *.o
