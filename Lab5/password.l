%{
#include<stdio.h>
int uc=0,lc=0,num=0,pl=0;
%}
%%
[A-Z] {uc++;pl++;}
[a-z] {lc++;pl++;}
[0-9] {num++;pl++;}
\n {    if((pl>=8&&uc>0&&lc>0&&num>0))
		printf("Valid Password\n");
	else
		printf("Invalid password\n");
	=0;num=0;uc=0;lc=0;
   }
. ;
%%
int yywrap(void){}
int main(){
	printf("Enter the password\n");
	yylex();
/*	if(pl>=8 && uc>=1 && lc>=1 && num>=1)
		printf("Valid password");
	else
		printf("Invalid password");
*/	return 0;
}
