
prefix = /opt/lms-7.9.0/Slim/Plugin/ShairTunes

CC 	= gcc
DEFINES = -DHAIRTUNES_STANDALONE -DHTTP_PARSER_STRICT=0 -D_POSIX_PTHREAD_SEMANTICS -D_REENTRANT 

CFLAGS  = -Wall -O2 -fPIC $(DEFINES)
LDFLAGS = -lpthread -lm -lrt -lcrypto -lsocket -lnsl

EXECUTABLE = shairport_helper
SOURCES = alac.c http.c hairtunes.c
LIBRARY = 

OBJECTS = $(SOURCES:.c=.o)

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) $(LIBRARY) $(LDFLAGS) -o $@

$(OBJECTS): $(DEPS)

.c.o:
	$(CC) $(CFLAGS) $(CPPFLAGS) $< -c -o $@

install: $(EXECUTABLE)
	install -D -m 0755 -o lmsd -g lmsd $(EXECUTABLE) $(prefix)/$(EXECUTABLE)

clean:
	rm -f $(OBJECTS) $(EXECUTABLE)



