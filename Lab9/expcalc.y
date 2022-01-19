%{
#include<stdio.h>
int flag=0;
%}
%union{ int i;float f;}
%token INT FLOAT NULL VAR
%left '+' '-'
%left '%' '/'
%left '(' ')'
%%
res: E NULL {		flag=0;
			printf("\nResult=%d\n", $$);
			return 0;
			}
   ;
E:E'+'E {$$=$1+$3;}
  |E'-'E {$$=$1-$3;}
  |E'*'E { $$=$1*$3;}
  |E'/'E { if($3!=0)
		$$=$1/$3;
	   else
		exit(0);
	 }
  |'('E')' {$$=$2;}
  |'-'INT {$$=-$2;  }
  |INT {$$=$1;}
  |FLOAT {$$=$1;}
  |'-'FLOAT {$$=-$2;}
  ;
%%
int main()
{
	printf("\nEnter Any Expression:\n");
	yyparse();
	if(flag==0)
		printf("\nEntered expression is Valid\n\n");
	return 0;
}
int yyerror()
{
	printf("\nEntered expression is Invalid\n\n");
	flag=1;
	return 0;
}

