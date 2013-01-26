
CC      = xc32-gcc
BIN2HEX = xc32-bin2hex
OBJDUMP = xc32-objdump

CPU = 32MX440F128H

OBJECTS = main.o led.o

CFLAGS  = -g -Wall
COMPILE = $(CC) -x c -mprocessor=$(CPU) -MMD
LINK    = $(CC) -mprocessor=$(CPU)

all: main.hex

.c.o:
	$(COMPILE) $(CFLAGS) -c $< -o $@

clean:
	rm -f *.hex *.elf *.o *.d

main.elf: $(OBJECTS)
	$(LINK) -o main.elf $(OBJECTS)

main.hex: main.elf
	$(BIN2HEX) main.elf

disasm: main.elf
	$(OBJDUMP) -d main.elf

