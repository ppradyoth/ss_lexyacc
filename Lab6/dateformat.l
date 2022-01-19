%{
#include<stdio.h>
%}


//mm (0[1-9]|1[0-2])
//dd (0[1-9]|[1-2][0-9]|3[0-1])
//yyyy (19[0-9][0-9]|2[0-9]{3})
%%
((0(1|3|5|7|8))|(10|12))\-(0[1-9]|[1-2][0-9]|3[0-1])\-([1-2][0-9]{3}) {flag=1;return;}
((0(4|6|9))|11)\-(0[1-9]|[1-2][0-9]|30)\-([1-2][0-9]{3}) {flag=1;return;}
02\-(0[1-9]|1[0-9]|2[0-8])\-([1-2][0-9]{3}) {flag=1;return;}
02\-29\-([1-2][0-9]{3}){  for(i=6;i<10;i++)
				{yr=(10*yr)+(yytext[i]-'0');}
		          if(yr%4==0||(yr%100==0&&yr%400!=0))
				{	flag=1;return;}
.* return;			
%%
int yywrap(void){}
int main()
{	printf("Enter date in mm-dd-yyyy");
	yylex();
	if(flag==1)
		printf("Valid date");
	else
		printf("Not a valid date");
	return 0;
}


