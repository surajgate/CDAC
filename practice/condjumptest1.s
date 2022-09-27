	.include "common.i"

	.text

	.entry main
main:	
	GetInt	askl, lower
	GetInt	asku, upper
	mov	rax, lower
	cmp	rax, upper
	jl	over
	mov 	rbx, upper
	mov 	upper, rax
	mov 	rax, rbx
	mov 	lower, rax 
	
over: 	PutMsg 	swap
	dec	rax
	mov	rcx, rax
	inc	rcx	
	mul	rcx		
	shr	rax
	mov	rbx, rax
	mov	rax, upper
	mov	rcx, rax
	inc	rcx
	mul	rcx
	shr	rax
	sub	rax, rbx
	PutInt	tell	

	PutMsg	greet
	ret

askl:	.string	"Lower Limit: "
asku:	.string	"Upper Limit: "
tell:	.string	"Sum of Integers = "
greet:	.string	"Goodbye User.\n"
swap:	.string "Lower value is greater than Upper\n \n==== After Swapping ==== \n\n"
	.data

lower:	.quad	0
upper:	.quad	0


.end

