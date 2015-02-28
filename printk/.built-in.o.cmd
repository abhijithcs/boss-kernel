cmd_kernel/printk/built-in.o :=  ld  -nostdlib -nodefaultlibs -nostartfiles -m elf_i386   -r -o kernel/printk/built-in.o kernel/printk/printk.o kernel/printk/braille.o 
