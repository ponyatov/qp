
all: ./blink.exe
	./blink.exe

./blink.exe: blink/src/blink.c
	$(CC) -o $@ $^
