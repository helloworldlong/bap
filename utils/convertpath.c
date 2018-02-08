#include <fcntl.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

//search in IL file,convert path condition
//argv[1]:IL filename
//argv[2]:pathdeep
//argv[3]:output IL filename
int main(int argc, char *argv[])
{
	if(argc == 1)
	{
  	printf("search in IL file,convert path condition\n");
  	printf("argv[1]:IL filename\n");
  	printf("argv[2]:pathdeep\n");
  	printf("argv[3]:output IL filename\n");
		return 0;
	}

	int pathdeep = atoi(argv[2]);
	
	FILE* fpr = fopen(argv[1], "r");
	if(fpr == NULL) 
	{
		printf("convert path error:can't open IL\n");
		exit(-1);
	}	

	FILE* fpw = fopen(argv[3], "w");
	if(fpw == NULL) 
	{
		perror("convert path error:can't ceate output IL\n");
		exit(-1);
	}
	
	char * line = NULL;
	size_t len = 0;
   	ssize_t nread;
	int curpathdeep = 1;

	while ((nread = getline(&line, &len, fpr)) != -1) 
	{
		//search for "assert", but not "assert true &"
		if(memcmp(line,"assert",6) == 0)
		{
			if(memcmp(line,"assert true &",13) != 0)
			{
				if(curpathdeep == pathdeep)
				{
					fwrite(line,7,1,fpw);
					//add ~(xxx)
					fwrite("~(",1,2,fpw);
					fwrite(line+7,strlen(line)-8,1,fpw);
					fwrite(")\n",1,2,fpw);
					break;
				}
				else
					curpathdeep++;
			}
		}
	
		fwrite(line,strlen(line),1,fpw);
  }

	if (line)
		free(line); 

	fclose(fpr);
	fclose(fpw);

  if(curpathdeep == pathdeep)
  {
    printf("done!\n");
    return 0;
  }
  else
  {
    printf("path deep error!\n");
    remove(argv[3]);
    return -1;
  }
}
