%{
	#include<stdio.h>
	#include<stdlib.h>
%}
%%
[a-zA-Z]+ {printf("Alphabets:%s\n",yytext);}
[0-9]+ {printf("Digits:%s\n",yytext);}
. ;
%%
char *yytext;
int yywrap(void){}
int main(){
	printf("Enter the string\n");
	yylex();
	return 0;
}
