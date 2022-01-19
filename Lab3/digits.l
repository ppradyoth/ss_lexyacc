%{
	#include<stdio.h>
	#include<stdlib.h>
%}
%%
^[0-9]* printf("DIGIT");
^[^0-9]|[0-9]*[a-zA-Z] printf("NOT A DIGIT");
.;
%%
int yywrap(void){}
int main(){
	yylex();
	return 0;
}

