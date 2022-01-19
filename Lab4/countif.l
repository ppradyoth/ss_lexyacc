%{
#include<stdio.h>
int count=0,countf=0;
%}

%%
[0-9]+[^\.] count++;
[0-9]+\.[0-9]+ countf++;
. ;
%%
int yywrap(void){}
int main()
{
	yyin=fopen("file.txt","r");
	yylex();
	printf("Integer count=%d\nFloat count=%d\n",count,countf);
	return 0;
}
