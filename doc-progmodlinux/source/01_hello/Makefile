# Makefile para un m�dulo b�sico del n�cleo

CC=gcc
MODCFLAGS := -Wall -DMODULE -D__KERNEL__ -DLINUX

hello.o:	hello.c /usr/include/linux/version.h
		$(CC) $(MODCFLAGS) -c hello.c
		echo insmod hello.o para conectarlo
		echo rmmod hello para desconectarlo
		echo
		echo X y la programaci�n del n�cleo no se mezclan.
		echo Haz insmod y rmmod desde fuera de X.
