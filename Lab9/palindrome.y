%{
#include<stdio.h>
int i=0;
%}
%token A B
%%
S: pal '\n'{i=1;printf("It is a palindrome!");}
   ;
pal: A pal A
   | B pal B              
   | A
   | b
;
%%
int main()
{
    printf("Enter Valid string\n");
    yyparse();
    if(i==1)
    	printf("Valid");
    return 0;
}
int yyerror(char* s)
{
    printf("Invalid\n");
    return 0;
}
