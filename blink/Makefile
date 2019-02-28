# QPC blink sample (c) Dmitry Ponyatov <dponyatov@gmail.com>

MODULE = blink
QPORT += posix-qv

EXE = $(MODULE).exe

all: ./$(EXE)
	./$(EXE)

QPC ?= $(HOME)/qm/qpc

CFLAGS += -I$(QPC)/include -I$(QPC)/src -I$(QPC)/ports/$(QPORT)

QF  = $(QPC)/src/qf/qf_act.c $(QPC)/src/qf/qf_actq.c $(QPC)/src/qf/qf_qact.c $(QPC)/src/qf/qf_qeq.c
QF += $(QPC)/src/qf/qf_time.c $(QPC)/src/qf/qf_dyn.c $(QPC)/src/qf/qf_mem.c
QF += $(QPC)/src/qf/qep_hsm.c

./$(EXE): src/$(MODULE).c $(QPC)/ports/$(QPORT)/qf_port.c $(QF)
	$(CC) $(CFLAGS) -o $@ $^ -lpthread
