%{
	#include<stdio.h>
%}
%%
^[a-zA-Z_][a-zA-Z0-9_]* printf("VALID IDENTIFIER");
^[^a-zA-Z_] printf("INVALID IDENTIFIER");
.;
%%
int yywrap(void){}
int main()
{
	yylex();
	return 0;
}
