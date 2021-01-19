#ifndef LIBASM_H
#define LIBASM_H

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <errno.h>
#include <fcntl.h>
#include <string.h>

size_t ft_strlen(const char *str);
char *ft_strcpy(char *, char *);
int ft_strcmp(char *,char *);
ssize_t ft_write(int, const void* , size_t);
ssize_t ft_read(int, void*, size_t);
char *ft_strdup(char *);

#endif