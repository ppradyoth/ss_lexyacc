#include<stdio.h>
#include<string.h>
int main(){
	int count=0,count1=0,count2=0;
	char s[50];
	printf("Ënter the reg ex\n");
	scanf("%s",s);
	for(count=0;count<strlen(s)/2;count++)
	{
	  if(s[count]==s[0]&&s[count]=='a')
		count1++;
	}
	for(count=strlen(s)/2;count<strlen(s);count++)
	{
	  if(s[count]==s[strlen(s)/2]&&s[count]=='b')
		count2++;
	}
	if(s[0]=='a' && count1==count2)
		printf("The expression is in the form of a^n b^n");
	else
		printf("The expression is not in the form of a^n b^n");
	return 0;
}
	
