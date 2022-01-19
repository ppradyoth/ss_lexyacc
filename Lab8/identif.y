%{
	#include<stdio.h>
	int valid=1;
%}
%token ALPHA NUM NL
%%
ident: ALPHA alphanum
       ;
alphanum:  ALPHA
	  | NUM
	  | ALPHA alphanum
	  | NUM alphanum
	  |
	  ;
%%
int yyerror(char *msg)
{
	printf("\n It is not an Identifier!\n");
	valid=0;
	return 0;
}
int main()
{
	printf("\nEnter the string");
	yyparse();
	if(valid)
		printf("\nIt is an Identifier!\n");
	return 0;
}
