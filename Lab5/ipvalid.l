%{
	#include<stdio.h>
%}
RE ([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])
%%
{RE}\.{RE}\.{RE}\.{RE} { printf("Valid IP Address");}
.* {printf("Invalid IP Address");}
%%
int yywrap(void){}
int main(){
	printf("Enter the IP Address");
	yylex();
	return 0;
}
 
