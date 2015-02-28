cmd_kernel/cpu/built-in.o :=  ld  -nostdlib -nodefaultlibs -nostartfiles -m elf_i386   -r -o kernel/cpu/built-in.o kernel/cpu/idle.o 
