#include <windows.h>
#include <string.h>
#include <stdio.h>
int main (int argc,char**argv)
{	if(argc<3){ 
	printf("error");
	return -999999999; 
	} 
char cmdString[6] = "open ";
strcat(cmdString, argv[1]);
strcat(cmdString, " alias bkmusic");
mciSendString("close bkmusic", NULL, 0, NULL);
mciSendString(cmdString, NULL, 0, NULL);		
mciSendString("play bkmusic", NULL, 0, NULL);
Sleep(atoi(argv[2])) ;
}
