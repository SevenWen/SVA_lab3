#include <stdio.h>
#include <stdlib.h>
#include "get_word.h"
#include "word_manage.h"

#define WORD_LEN_MAX (1204)
#define main real_main

int vuln(char* str)
{
	char *string="Did it";
	char i=0;
	char buffer[50];
	strcpy(buffer,str);
	register int esp asm ("esp");
	register int ebp asm ("ebp");
	printf(buffer);
	printf("ebp=%08x",ebp);
}

int main(int argc ,char *argv[])
{	
	vuln(argv[0]);
	printf("\nHere\n");
	char buf[WORD_LEN_MAX];
	FILE  *fp;
	if(argc ==1)
	{
		fp = stdin;
	}
	else 
	{
		fp = fopen(argv[1],"r");
		if( fp == NULL)
		{
			fprintf(stderr,"%s can not open.\n",argv[1]);
			exit(1);
		}
	}

	word_initialize();
	while (get_word(buf,WORD_LEN_MAX,fp) != EOF)
	{
	add_word(buf);
	}
	dump_word(stdout);
	word_finalize();
	return 0;
}
