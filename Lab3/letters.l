%{
	#include<stdio.h>
	#include<stdlib.h>
%}
%%
^[a-zA-Z]* printf("ALPHABETS");
^[^A-Za-z]|[a-zA-Z]*[0-9] printf("NOT ALPHABETS");
.;
%%
int yywrap(void){}
int main(){
	yylex();
	return 0;
}
