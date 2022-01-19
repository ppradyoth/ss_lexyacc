%{
	#include "y.tab.h"
%}
%%
^[a-zA-Z] return ALPHA;
^[0-9] return NUM;
\n return NL;
. return yytext[0];
%%
int yywrap(){
	return 1;
}
