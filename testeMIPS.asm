
.data 

ar:	.word 50 13
size:  	.word 3

.text
	addi 	$s0, $zero, 0x2000
	addi 	$s1, $zero, 0x2008
	lw 	$t0, 0($s1)		# 3
loop:
	beq 	$t0, $t1, next
	addi 	$t0, $t0, -1		# 2, 1, 0
	lw 	$t2, 0($s0)		# 50, 37, 24
	lw 	$t3, 4($s0)		# 13
	sub	$t2, $t2, $t3		# 37, 24, 11
	sw	$t2, 0($s0)
	j 	loop
next:
	addi	$t5, $zero, 0xFF0	# 0x00000ff0
	nor	$t6, $t5, $t5		# 0xfffff00f
	or 	$t7, $t6, $t5		# 0xffffffff
	slt 	$t0, $t5, $t6		# 0
	slt	$t1, $t6, $t5		# 1
bne_l:	
	addi  	$t1, $t1, -1		# 0, -1
	bne 	$t1, $t7, bne_l		# falha, salta
	sll	$t2, $t6, 8		# 0xfff00f00
	and	$t3, $t2, $t5		# 0x00000f00
	sra 	$s4, $t2, 4		# 0xffff00f0
	srl	$s5, $t2, 4		# 0x0fff00f0

