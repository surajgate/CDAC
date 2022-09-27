#include<stdio.h>
int main()
{
	char grade;
	
	printf("Enter the grade:\n");
	scanf("%c",&grade);

	switch(grade)
	{
		case 'A':
			printf("Distinction\n");
			break;

		case 'B':
			printf("First class\n");
			break;


		case 'C':
			printf("Second class\n");
			break;


		case 'D':
			printf("Pass class\n");
			break;


	  	 default:
			printf("Failed\n");
			break;
	}
	return 0;
}

