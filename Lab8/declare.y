%{
	#include<stdio.h>
	int valid=1;
%}
%token IDENTIF BUILTIN SEMICOL COMMA
%%
declare: BUILTIN var SEMICOL 
       ;
var: var COMMA IDENTIF|IDENTIF
   ;
%%
int yyerror(char *msg)
{
	printf("Syntax error");
	valid=0;
	return 0;
}
int main()
{
	printf("Enter the statement\n");
	yyparse();
	if(valid)
	{
		printf("\nIt is a valid declarative statement");
	}
	return 0;
}
