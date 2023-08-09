# This is a work in progress

.global _start

_start:
	#load two numbers in registers
	addi	a0, x0, 23
	addi	a1, x0, 44
	#call function 
	jal _add_two
	
	#move return to temporary to setup for print call
	add	t0, x0, a0
	#print number returned
	addi	a7, x0, 64
	addi	a0, x0, 1
        add	a1, x0, t0
	addi	a2, x0, 2
	ecall

	#exit
	addi	a7, x0, 93
	addi	a0, x0, 13
	ecall
_add_two:
	#pull arugments into another register
	#don't actually need to do this
	add	t0, x0, a0
	add	t1, x0, a1
	#add numbers into third register
	add	t2, t0, t1
	#put into return register
	add	a0, x0, t2
	#return
	ret


