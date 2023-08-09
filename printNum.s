# Currently broken

.global _start

_start:
	addi	t0, x0, 22	# loading number to write
	sb	t0, 8(sp)	# storing byte

	addi	a7, x0, 64	# syscall for writing
	addi	a0, x0, 1	# file descriptor
	#addi	a1, x0, 22	# number to try to wire
	addi	a2, x0, 1	# trying to do size
	ecall			# ecall
	
	addi	a7, x0, 93	# syscall for exit
	addi	a0, x0, 13	# ???
	ecall
