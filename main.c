#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <errno.h>
// void hello();
int ft_strlen(char *str);
char *ft_strcpy(char *, char *);
int ft_strcmp(char *,char *);
void ft_write(int, char* , int);


int main()
{
    // hello();
    char *str1 = "";
    char *str2 = "a";
    int d = write(1,"samir\n",6);
    printf("result {%d} errno {%d} \n",d,errno);
    // char *str1 = (char *)malloc(6);
    // str1[0] = 'o';
    // str1[1] = 's';
    // char *str2 = "zainab l karita";
    // ft_strcpy(str1,str2);
    // printf("ft_strcmp{%d}\n",ft_strcmp(str1,str2));
    // ft_write(10,"samir\n",6);
    // printf("{%d}\n", ft_strlen("samir"));
    return (0);
}