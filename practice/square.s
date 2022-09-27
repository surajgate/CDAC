	.include "common.i"

	.text

	.entry main
main:	

	GetInt aks, num
	mov rax, num
	mul rax

	PutInt tell
	PutMsg	greet
	ret

aks: .string "Enter number"
greet:	.string	"Hello World!\n"
tell: .string "square of number  = "
	.data
num: .quad 0  

.end

