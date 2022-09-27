	.include "common.i"
	.extern	GCD

	.text

	.entry main
main:	
	mov	rbp, rsp
	sub	rsp, 16

	GetInt	ask1, rbp-8
	GetInt	ask2, rbp-16
	mov	rdi, [rbp-8]
	mov	rsi, [rbp-16]
	mov 	rcx,[rbp-8]
	mov	r bx,[rbp-16]		
	call	GCD
	PutInt tell1
	mov r8,rax
	mov rax,rbx
	mul rcx
	div r8		
	PutInt	tell2
	
	mov	rsp, rbp
	ret

ask1:	.string	"First Positive Integer : "
ask2:	.string	"Second Positive Integer: "
tell1:	.string	"G.C.D = "	
tell2:	.string "L.C.M. = "
0<F5>tell3:	.string "
	.end

