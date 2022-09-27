
	.include "common.i"

	.text

	.entry main
	

main:
	GetInt greet,month
	mov r9,month
	sub r9,1
	mov r8,offset days

	mov rax,[r8+8*r9]
	PutInt print

	ret


print:	.string " Number of days "
greet:	.string	"Enter month (1-12):"
	
	.data

month:	.quad 0
#days: 	.quad 31,28,31,30,31,30,31,31,30,31,30,31
days: .string "jan", "feb","mar", "apr", "may", "jun","jul", "aug", "sep", "oct", "nov", "dec"
 

	
	
.end


