CC=clang # or gcc

FRAMEWORKS:= -framework Foundation -framework AppKit

SOURCE=src/main.m src/Notifier.m

CFLAGS=-Wall
LDFLAGS= $(FRAMEWORKS)
OUT=-o build/usb-mount-notifier

all:
	$(CC) $(CFLAGS) $(LDFLAGS) $(OUT) $(SOURCE)
