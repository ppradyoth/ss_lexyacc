%{
	#include<stdio.h>
%}
%%
\/\/(.*) {};
\/\*(.*\n)*.*\*\/ {};
%%
int yywrap(){
	return 1;
}
int main()
{	/*//FILE *yyin,*yyout;
	//yyin=fopen(argv[1],"r");
	//yyout=fopen(argv[2],"w");
	//if(argc!=3)
	//	printf("Invalid number of arguments\n");
	//else
	//{
	//	printf("Comments removed!");
	//	yylex();
	//}
	//fclose(yyin);
	//fclose(yyout);*/
	yyin=fopen("comment.c","r");
	yyout=fopen("comment2.c","w");
	yylex();
	return 0;
}
