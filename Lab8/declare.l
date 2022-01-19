%{
	#include "y.tab.h"
%}
%%
char|float|int return BUILTIN;
"," return COMMA;
";" return SEMICOL;
[a-zA-Z]+[a-zA-Z0-9]* return IDENTIF;
. return yytext[0];
%%
int yywrap()
{
	return 1;
}
