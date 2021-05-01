CFLAGS := -g -m32 -O1

# Opción para que no se puedan incluir
# ficheros standars
#
# ref: https://dashdash.io/1/gcc#-nostdinc_1
#
CFLAGS += -nostdinc

# Opción para indicarle a gcc que no se
# dispone de un "host" donde se ejecuta
# el programa
#
# ref: https://dashdash.io/1/gcc#-ffreestanding
CFLAGS += -ffreestanding

kern0: kern0.o boot.o
	ld -m elf_i386 -Ttext 0x100000 $^ -o $@
	# Verificar imagen Multiboot v1.
	grub-file --is-x86-multiboot $@

%.o: %.S
	$(CC) $(CFLAGS) -c $<

run: kern0
	qemu-system-i386 -serial mon:stdio -kernel kern0

clean:
	rm -f kern0 *.o core

.PHONY: run clean
