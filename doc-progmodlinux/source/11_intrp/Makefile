# Makefile para un m�dulo b�sico del n�cleo

CC=gcc
MODCFLAGS := -O6 -Wall -DCONFIG_KERNELD -DMODULE -D__KERNEL__ -DLINUX

intrpt.o:	intrpt.c /usr/include/linux/version.h
		$(CC) $(MODCFLAGS) -c intrpt.c
                echo Este m�dulo matar� tu m�quina, y no tendr�s
                echo forma de reiniciarla de una manera agradable. �Antes
                echo de hacer insmod, haz un "sleep 120 ; reboot" en
                echo otro terminal!          
