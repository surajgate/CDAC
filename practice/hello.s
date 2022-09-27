	.include "common.i"

	.text

	.entry run
run:	
	PutMsg	greet
	PutMsg s
	ret


greet:	.string	"Hello World!\n"


.end

