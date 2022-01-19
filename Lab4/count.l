%{
	int w=0,cc=0,n=1;
%}
%%
[a-zA-Z]+ {w++;cc=cc+yyleng;}
[\n]+ {n++;cc++;}
[ ]+ {cc++;}
[.]+ {cc++;}
%%
int main(){
	FILE *fp;
	char file[20];
	printf("Ënter File Name:");
	scanf("%s",file);
	fp=fopen(file,"r");
	yyin=fp;
	yylex();
	printf("\nTotal Words: %d",w);
	printf("\nTotal Characters: %d",cc);
	printf("\n Total Lines:%d",n);
	return 0;
}
int yywrap(){
	return 1;
}	
