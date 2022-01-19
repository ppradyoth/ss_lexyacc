%{
#include<stdio.h>
#include "y.tab.h"
extern int yylval.i; extern float yylval.f;
%}
%%
[0-9]*\.[0-9]+ {
		yylval.f=atof(yytext);
		return FLOAT;
	}
[0-9]+ { yylval.i=atoi(yytext);
	return INT;
	}
[\t] ;
[\n] return 0;
. return yytext[0];
%%
int yywrap()
{
return 1;
}
