#!/bin/sh
nasm -felf64 ft_write.s  && gcc -no-pie main.c ft_write.o && ./a.out