

default:
	@echo $(filename)
	rm -rf target
	riscv64-linux-gnu-as $(filename).s -o target.o
	riscv64-linux-gnu-gcc -o target target.o -nostdlib -static
