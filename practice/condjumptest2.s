	.include "common.i"

	.text

	.entry main
main:
	GetInt	askn, num

	inc 	rax
	mov	rbx, num
	sub	rcx, rcx

	mov	rdx, 10
1:	mul	rdx
	inc	rcx

	cmp	rax, rbx
	jle	1b

	mov	rax, rcx
	PutInt	tell

	ret

askn:	.string	"Positive Integer: "
tell:	.string	"Number of Digits = "

	.data

num:	.quad	0

.end

