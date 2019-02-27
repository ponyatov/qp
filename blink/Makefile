# QPC blink sample (c) Dmitry Ponyatov <dponyatov@gmail.com>

MODULE = blink
QPORT += posix-qv

EXE = $(MODULE).exe

all: ./$(EXE)
	./$(EXE)

QPC ?= $(HOME)/qm/qpc

CFLAGS += -I$(QPC)/include -I$(QPC)/ports/$(QPORT)

./$(EXE): src/$(MODULE).c $(QPC)/ports/$(QPORT)/qf-port.c
	$(CC) $(CFLAGS) -o $@ $^
