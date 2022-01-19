%{
	#include<stdio.h>
	int a=0;
%}
%%
[0-9] a++;
"\n" {printf("Number of digits = %d\n",a);a=0;}
%%
int yywrap(void){}
int main(){
	printf("Enter the string");
	yylex();
	return 0;
}
