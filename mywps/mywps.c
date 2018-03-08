#include<stdio.h>
#include<stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
int mystrcmp(const char *dest, const char *source)  
{  
   //assert((NULL != dest) && (NULL != source));  
   while (*dest && *source && (*dest == *source))  
  {  
          dest ++;  
          source ++;  
  }  
   return *dest - *source;  
  
}  
int cmpint(int a, int b)
{
  if(a>b)
  {
    return 1;
  }
  else{
    return 0;
  }
}
typedef struct mycmd
{
  char cmd[16];
  char data[32];
}mycmd_t;
void str_split( char *str, char *left, char *right, char limit)
{	
    //if(strlen())
    memset(left,0,16);
    memset(right,0,32);
    if(strlen(str)>16)
    {
      printf("long string\n");
      exit(0);
    }
    char *p = strrchr(str, limit);
	
	if (p == NULL)
	{
		strcpy(left, str);
	}
	else
	{
		strncpy(left, str, p-str);
		strcpy(right, p+1);
	}
}
int main(int argc, char **argv)
{
  int  fd;
  int flag=0;
  char  buff[260] = {0};
  //fd = open("serial.txt", O_RDONLY);
  printf("%s\n%s\n", argv[0], argv[1]);
  fd = open(argv[1], O_RDONLY);
  read(fd, buff, 256);
  close(fd);
  //twice cmpint
  /*
  int a=*(int*)buff;
  int b=*(int*)(buff+4);
  if(cmpint(a,22)==1)
  {
    printf("a:%x>22\n",a);
  }
  else{
    if(cmpint(b,22))
    {
      printf("b:%x>22\n",b);
    }
    printf("a:%x<22\n",a);
  }
  */
  //mystrcmp while condition
  mycmd_t mycmd_t_d;
  str_split(buff,mycmd_t_d.cmd,mycmd_t_d.data,' ');
  if(strcmp(mycmd_t_d.cmd,"pwd")==0)
  {
    printf("pwd\n");
  }
  else if(strcmp(mycmd_t_d.cmd,"cwd")==0)
  {
    printf("cwd\n");
  }
  else
  {
    printf("no cmd\n");
  }
  //simplest condition
/*
  if (buff[0] == 'a')
{
  printf("buffer[0] is a\n");
  if (buff[1] == 'b') 
  {
    printf("buffer[1] is b\n");
    if (buff[2] == 'c')
    {
      printf("buffer[2] is c\n");
      if (buff[3] == 'd')
      {
        printf("buffer[3] is d\n");
        if (buff[4] == 'e')
        {
          printf("buffer[4] is e\n");
          flag= 1;
        }
        else
        {
          printf("buffer[4] is not e\n");
        }
      }
      else
      {
        printf("buffer[3] is not d\n");
      }
    }
    else
    {
      printf("buffer[2] is not c\n");
    }
  }
  else
  {
    printf("buffer[1] is not b\n");
  }
}
else
{
  printf("buffer[0] is not a\n");
}
  if(flag==1)
  {
    printf("control flow\n");
  }
*/
  return 0;
}


