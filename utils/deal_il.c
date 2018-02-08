#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main(int argc ,char *argv[])
{
	FILE *infp,*outfp;
	char *in_file_name,*out_file_name;
	int size = 1024;
	char *buff = (char *)malloc(size);
	char *pstr_before,*pstr_after;

	//check the number of arguments
	if(argc!=3)
	{
		printf("infile outfile is need\n");
		return 0;
	}

	in_file_name = (char *)argv[1];
    out_file_name = (char *)argv[2];
	//open the file
	if((infp=fopen(in_file_name,"r"))==NULL)
	{
	    printf("can,t open the file\n");
		return 0;
	}
	if((outfp=fopen(out_file_name,"w"))==NULL)
	{
	    printf("can,t open the file\n");
		return 0;
	}

	//read lines
	while(NULL != fgets(buff, size, infp))
	{
        if((pstr_before=strstr(buff,"@taint_intro"))!=NULL)
		{
            if((pstr_after=strstr(pstr_before+12,"@"))||(pstr_after=strstr(pstr_before+12,"\n")))
            {
               // printf("%s\n",buff);
                for(;pstr_after!=pstr_before;pstr_before++)
                {
                    *pstr_before = 0x20;
                }
                fprintf(outfp,"%s",buff);
                continue;
            }
		}
		fprintf(outfp,"%s",buff);
    }


	free(buff);
	fclose(outfp);
	fclose(infp);
	return 0;
}


