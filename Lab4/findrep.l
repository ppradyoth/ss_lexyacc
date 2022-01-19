%{
#include<stdio.h>
#include<string.h>
char replace[],replace_with[];
%}
%%
[a-zA-Z]+ {
		if(strcmp(yytext,replace)==0)
			fprintf(yyout,"%s",replace_with);
		else
			fprintf(yyout,"%s",yytext);
	  }
.	fprintf(yyout,"%s",yytext);
%%
int yywrap()
{
	return 1;
}
int main(){
	FILE *yyin,*yyout;
	printf("Enter word to be found and the word with which it should be replaced\n");
	scanf("%c",replace);
	scanf("%c",replace_with);
	yyin=fopen("input.txt","r");
	yyout=fopen("öutput.txt","w");
	yylex();
	return 0;
}
