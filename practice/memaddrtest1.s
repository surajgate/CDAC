	.include "common.i"

	.text	#read-only memory section

	.entry main

main:	
	GetInt	asku, upper
	mov	rax, upper	#rax=N
	mov	rcx, rax	#rcx=N
	add	rcx, 1		#rcx=N+1
	mul	rcx		#rax=N*(N+1)
	shr	rax		#rax=N*(N+1)/2
	PutInt	tell	
	
	PutMsg ad
	GetInt number1,num1
	GetInt number2,num2
	GetInt number3,num3
	mov rax, num1
	mov rcx, num2
	mov rbx, num3
	add rbx, rcx
	add rax, rbx
	PutInt add
	

	PutMsg su
	GetInt number1,num1
	GetInt number2,num2
	mov rax, num1
	mov rcx, num2
	sub rax, rcx
	PutInt sub
	
	PutMsg mu
	GetInt number1,num1
	GetInt number2,num2
	mov rax, num1
	mov rcx, num2
	mul rcx
	PutInt mul

	PutMsg dd
	GetInt number1,num1
	GetInt number2,num2
	mov rax, num1
	mov rcx, num2
	div rcx
	PutInt div

	PutMsg	greet
	ret


div: .string "Division of two number is"
mul: .string "Multication of two number is"
sub: .string "Subtration of two number is "
number2: .string " Enter second number "
number1: .string " Enter first number "
number3: .string " Enter third number "
add:	.string "Addition of two numbers is :"
asku:	.string	"Upper Limit: "
tell:	.string	"Sum of Integers = "
greet:	.string	"Goodbye User.\n"
ad: .string "\n---------- ADDITION ----------\n"
su: .string "\n---------- SUBTRACTION ----------\n"
mu: .string "\n---------- MULTIPLICATION ----------\n"
dd: .string "\n--------- DIVISION ----------\n"


	.data	#writable memory section

upper:	.quad	0
num1:	.quad 0
num2:	.quad 0
num3:  .quad 0
.end

