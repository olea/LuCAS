# Makefile para un m�dulo b�sico del n�cleo

CC=gcc
MODCFLAGS := -O6 -Wall -DCONFIG_KERNELD -DMODULE -D__KERNEL__ -DLINUX

procfs.o:	procfs.c /usr/include/linux/version.h
		$(CC) $(MODCFLAGS) -c procfs.c
                                                     
