This is an experiment to use the XC32 compiler directly from the command line using a simple Makefile.

I prefer this over using MPLAB-X since Emacs and Make are more familiar and less distracting to me.

To make this work you need to add the compiler to your `$PATH` first.

```
$ export PATH=$PATH:/Applications/microchip/xc32/v1.20/bin
$ make
xc32-gcc -x c -mprocessor=32MX440F128H -MMD -g -Wall -c main.c -o main.o
xc32-gcc -x c -mprocessor=32MX440F128H -MMD -g -Wall -c led.c -o led.o
xc32-gcc -mprocessor=32MX440F128H -o main.elf main.o led.o
xc32-bin2hex main.elf
```

The resulting `main.hex` can be flashed to the chip. I have not completely figured out how to do that but I think there are some options for it by using undocumented commands embedded in the MPLAB-X installation.

