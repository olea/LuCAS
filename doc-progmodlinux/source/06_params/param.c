/* param.c 
 * 
 * Recibe en linea de comandos los par�metros en la instalaci�n del m�dulo
 */

/* Copyright (C) 1998-99 by Ori Pomerantz */





/* Los ficheros de cabeceras necesarios */

/* Est�ndar en los m�dulos del n�cleo */
#include <linux/kernel.h>   /* Estamos haciendo trabajo del n�cleo */
#include <linux/module.h>   /* Espec�ficamente, un m�dulo */

/* Distribuido con CONFIG_MODVERSIONS */
#if CONFIG_MODVERSIONS==1
#define MODVERSIONS
#include <linux/modversions.h>
#endif        


#include <stdio.h>  /* Necesito NULL */


/* En 2.2.3 /usr/include/linux/version.h se incluye
 * una macro para esto, pero 2.0.35 no lo hace - por lo
 * tanto lo a�ado aqu� si es necesario */
#ifndef KERNEL_VERSION
#define KERNEL_VERSION(a,b,c) ((a)*65536+(b)*256+(c))
#endif



/* Emmanuel Papirakis:
 *
 * Los nombres de par�metros son ahora (2.2) 
 * manejados en una macro.
 * El n�cleo no resuelve los nombres de los 
 * s�mbolos como parec�a que ten�a que hacer.
 *
 * Para pasar par�metros a un m�dulo, tienes que usar una macro
 * definida en include/linux/modules.h (linea 176).
 * La macro coge dos par�metros. El nombre del par�metro y 
 * su tipo. El tipo es una letra entre comillas. 
 * Por ejemplo, "i" deber�a de ser un entero y "s" deber�a
 * de ser una cadena de caracteres.
 */


char *str1, *str2;


#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,2,0)
MODULE_PARM(str1, "s");
MODULE_PARM(str2, "s");
#endif


/* Inicializa el m�dulo - muestra los par�metros */
int init_module()
{
  if (str1 == NULL || str2 == NULL) {
    printk("La pr�xima vez, haz insmod param str1=<algo>");
    printk("str2=<algo>\n");
  } else
    printk("Cadenas de caracteres:%s y %s\n", str1, str2);

#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,2,0)
  printk("Si intentas hacer insmod a este m�dulo dos veces,");
  printk("(sin borrar antes (rmmod)\n");
  printk("al primero), quiz�s obtengas el mensaje"); 
  printk("de error:\n");
  printk("'el s�mbolo para el par�metro str1 no ha sido encontrado'.\n");
#endif

  return 0;
}


/* Limpieza */
void cleanup_module()
{
}  
