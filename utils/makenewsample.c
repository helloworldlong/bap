#include <fcntl.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

//search in stp's output file, get solved value and make new sample file associated with taint mark file.
//argv[1]:stp's output filename
//argv[2]:taint assistant mark filename
//argv[3]:old sample filename
//argv[4]:new sample filename
int main(int argc, char *argv[])
{
	if(argc == 1)
	{ 
 		printf("search in stp's output file, get solved value and make new sample file associated with taint mark file.\n");
		printf("argv[1]:stp's output filename\n");
		printf("argv[2]:taint assistant mark filename\n");
		printf("argv[3]:old sample filename\n");
 		printf("argv[4]:new sample filename\n");
		return 0;
	}

	int t_size;
	int* t_offsets = NULL;

	//get offset & value from taint mark file
	FILE* fpt = fopen(argv[2], "rb");
	
	if(fpt == NULL) 
	{
		printf("can't open taint assistant mark file\n");
		exit(-1);
	}	

	/*taint assistant mark file*/
	/* |total number(4bytes)|offset1(4bytes)|offset2(4bytes)|... */
	fread(&t_size,1,4,fpt);
	t_offsets = malloc(t_size*4);
	
	int i;
	for(i=0;i<t_size;i++)
	{
		fread(&t_offsets[i],1,4,fpt);
	}

	fclose(fpt);

	//analyse STP's output file
	FILE* fps = fopen(argv[1], "r");
	if(fps == NULL) 
	{
		printf("can't open STP's output file\n");
		exit(-1);
	}	

 	FILE* fpo = fopen(argv[3], "rb");
	//printf("old sample %s\n",argv[2]);
	if(fpo == NULL) 
	{
		printf("can't open old sample file\n");
		exit(-1);
	}
 
	FILE* fpn = fopen(argv[4], "w+");
	if(fpn == NULL) 
	{
		printf("can't create new sample file\n");
		exit(-1);
	}

  unsigned char buf[1024];
  while(!feof(fpo))
  {
    int fl = fread(buf,1,sizeof(buf),fpo);
    fwrite(buf,1,fl,fpn);
  }
//
  fclose(fpo);

	char * line = NULL;
	size_t len = 0;
   	ssize_t nread;
	int IsSovledSuccess = 0;

	//search "ASSERT(" in STP's output file
	while ((nread = getline(&line, &len, fps)) != -1) 
	{
		//no solved value
		if(memcmp(line,"Valid",5) == 0)
		{
			break;
		}
		//no solve
		if(memcmp(line,"ASSERT(",7) == 0)
		{
			char *p = strstr(line,"symb_");

			//not symb_x_x, maybe memory value, so discard		
			if(p == NULL)
				continue;
			
			//analyse offset & value, then modify old sample
			IsSovledSuccess = 1;
			p += 5;
			char *pp = strstr(p,"_");
			//
			char s[20];
			memset(s,0,20);
			memcpy(s,p,pp-p);
			int n = atoi(s);
			//
			pp = strstr(p,"0x");
			char *ppp = strstr(pp," )");
			memset(s,0,20);
			memcpy(s,pp,ppp-pp);
			int value = strtol(s,0,16);

			if((n-1) >= t_size)
			{
				printf("cann't find the taint offset %d in taint mark file!\n",n);
				IsSovledSuccess = 0;
				break;
			}
			else
			{
				printf("The %dth taint variable (start from 1),the offset in the file is %d (start from 0),value=%d\n",n,t_offsets[n-1],value);
				fseek(fpn,t_offsets[n-1],SEEK_SET);
				
				fwrite(&value,1,1,fpn);
			}
		}
	}

	fclose(fps);
	fclose(fpn);

	//sovled failed, make a NULL new sample
	if(IsSovledSuccess == 0)
	{
		FILE* fp = fopen(argv[4],"w");
		fclose(fp);
		printf("failed!\n");
	}
	else
		printf("successed!\n");

	if(t_offsets)
		free(t_offsets);

	return 0;
}
