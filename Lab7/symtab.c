#include<stdio.h>
#include<string.h>
//using namespace std;
FILE *rf,*wf;
struct intermediate
{
 	int lcaddr;
 	char label[10];
 	char mnem[10];
 	char op[10];
}res;
struct symbol
{
	 char symbol[10];
	 int addr;
}sy;
int main(){ 
	//int count=1;
	rf=fopen("siccodee.txt","r+");
	wf=fopen("symtab.txt","w");
	//int c=getc(rf);
	res.lcaddr=1000;
	while(!feof(rf))
	{
		//fscanf(rf,"%d %s %s %s",&res.lcaddr,res.label,res.mnem,res.op);
		fscanf(rf,"%s %s %s",res.label,res.mnem,res.op);
		void createentry()
		{
			strcpy(sy.symbol,res.label);
			sy.addr=res.lcaddr;
			fprintf(wf,"%s\t%d\n",sy.symbol,sy.addr);
		}
		if(strcmp(res.label,"NULL")!=0)
		{
		   if(strcmp(res.label,"FIRST")==0)
 		   {
    			 res.lcaddr=1000;
   		         createentry();
     			 res.lcaddr+=3;
   		   }
   		   else if(strcmp(res.mnem,"RESB")==0)
   	           {    createentry();
      			int d=res.op[0]-'0';
       			res.lcaddr+=d;
   		   }
   		   else if(strcmp(res.mnem,"RESW")==0)
   		   {    createentry();
    		        int c=res.op[0]-'0';
     			res.lcaddr+=c*3;
   		   }
   		   else if(strcmp(res.mnem,"BYTE")==0)
   		   {    createentry();
      			int b=strlen(res.op)-3;
      			res.lcaddr+=b;
   		   }
   		   else
   		   {    createentry();
      		   	res.lcaddr+=3;
  		   }
	       }
	       else
	       {
   		 res.lcaddr+=3;
	       }
	}
	fcloseall();
	printf("Symbol Table created!");
	return 0;
}
	
