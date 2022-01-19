%{
#include<stdio.h>
#include "y.tab.h"
extern yylval;
%}
%%
[0-9]+ { yylval.i=atoi(yytext);
	return INT;
	}
[a-zA-Z]+ return VAR;
[\t] ;
[\n] return 0;
. return yytext[0];
%%
int yywrap()
{
return 1;
}
