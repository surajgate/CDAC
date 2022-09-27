	.include "common.i"

	.text

	.entry main
main:	

	GetInt aks, num
	mov rax, 01
	mov rcx , num
1:	mul rcx
	dec rcx
	cmp rcx , 0
	jne 1b
	

	PutInt tell
	ret

aks: .string "Enter number"
tell: .string "factorial of number  = "
	.data
num: .quad 0  

.end

