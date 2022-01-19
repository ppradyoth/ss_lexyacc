%{
#include<stdio.h>
int l=0;
FILE *yyin;
%}
%%
\n l++;
["].*["] printf("Valid string in line number %d\n",l+1);
["].* printf("Invalid string is in line number %d\n",l+1);
. ;
%%
int yywrap(void){}
int main()
{
	yyin=fopen("stringconstants.c","r");
	yylex();
	//fclose(yyin);
	return 0;
}

