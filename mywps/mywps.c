#include<stdio.h>
#include<stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>


int main(int argc, char **argv)
{
  int  fd;
  int flag=0;
  int cnt=0;
  char  buff[10] = {0};
  if(argc!=2){
    printf("there should be two parameters\n");
    return 1;
  }
  fd = open(argv[1], O_RDONLY);
  read(fd, buff, 256);
  close(fd);
  if(buff[0]=='b')cnt++;
  if(buff[1]=='a')cnt++;
  if(buff[2]=='d')cnt++;
  if(buff[3]=='!')cnt++;
  if(cnt>=4)abort();
  return 0;
}


