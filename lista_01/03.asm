.text

main:	addi $2, $0, 5
	syscall 
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall 
	add $9, $0, $2
	
	mult $8, $9 
	
	mflo $4 
	
	addi $2, $0, 1 
	syscall 
	
	addi $2, $0, 10
	syscall