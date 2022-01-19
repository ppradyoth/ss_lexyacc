#include<stdio.h>
#include<stdlib.h>
#include<string.h>
int main(){
	FILE *fp,*fp1;
	char *data;
	fp=fopen("in.txt","r");
	fp1=fopen("out.txt","w");
	if(fp==NULL){
		printf("File failed to open");
	//	exit(0);
	}
	else
	{
		printf("File opened\nIt's contents are\n");
		while((fgets(data,1000,fp))!=NULL)
		{
			printf("%s",data);
		}
	//	fgets(data,100,(FILE*)fp!=NULL);
		fclose(fp);
		if(strlen(data)>0)
		{
			fputs(data,fp1);
			fputs("\n",fp1);
		}
		fclose(fp1);
		printf("File is read and data is written to other file successfully!!\n");
	}
	return 0;
}

	
