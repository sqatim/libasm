#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <errno.h>
#include <fcntl.h>
// void hello();
size_t ft_strlen(const char *str);
char *ft_strcpy(char *, char *);
int ft_strcmp(char *,char *);
ssize_t ft_write(int, const void* , size_t);
ssize_t ft_read(int, void*, size_t);
int ft_strdup(char *);

int main()
{
    // hello();
    char *str1 = (char *)malloc(6);
    str1[0] = 's';
    str1[1] = 'a';
    str1[2] = 'l';
    str1[3] = 'a';
    str1[4] = 'm';
    char *str2 = "samir";
    printf("%s\n",ft_strcpy(str1,str2));
    // int d = ft_write(1,"samir\n",6);
    // printf(" result {%d} \t errno {%d} \n",d,errno);
    // char *line = (char *)malloc(7);
    // int fd = open("text.txt",O_RDWR);
    // int res = 0;// ft_read(fd,line,7);

    // printf("%d\n",ft_strdup("samir"));
    // int res1 = read(fd,line,7);
    // printf("{result ==> %d}\t{res1 ==> %d}",res,res1);
    // line[6] = '\0';
    // write(1,"\n",1);
    // ft_write(1,line,7);
    // write(1,"\n",1);
    // ft_write(1,line,7);
    // str1[0] = 'o';
    // str1[1] = 's';
    // char *str2 = "zainab l karita";
    // ft_strcpy(str1,str2);
    // printf("ft_strcmp{%d}\n",ft_strcmp(str1,str2));
    // ft_write(10,"samir\n",6);
    // printf("{%d}\n", ft_strlen("samir"));
    return (0);
}