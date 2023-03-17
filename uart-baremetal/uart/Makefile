# Add just this part to enable the 'clean' target for windows, in linux OS its not necessary
# ifdef OS
#    RM = del /Q
#    FixPath = $(subst /,\,$1)
# else
#    ifeq ($(shell uname), Linux)
#       RM = rm -f
#       FixPath = $1
#    endif
# endif

		
ARMGNU = arm-none-eabi

all: clean main.bin

main.bin: main.o 
	$(ARMGNU)-ld  -T linker.ld main.o -o main.elf
	$(ARMGNU)-objcopy -O binary main.elf main.bin
	$(ARMGNU)-objdump -D main.elf > main.list

main.o: main.c
	$(ARMGNU)-gcc main.c -S -mcpu=cortex-a15
	$(ARMGNU)-gcc main.c -c -o main.o

clean:
	$(RM) *.bin
	$(RM) *.list
	$(RM) *.o
	$(RM) *.s
	$(RM) *.elf
