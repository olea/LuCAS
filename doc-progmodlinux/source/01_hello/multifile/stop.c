/* stop.c 
 * Copyright (C) 1999 by Ori Pomerantz
 * 
 * "Hola, mundo" - la versi�n m�dulo del n�cleo. Este 
 * fichero incluye justamente la rutina de parada.
 */

/* Los ficheros de cabeceras necesarios */

/* Est�ndar en los m�dulos del n�cleo */
#include <linux/kernel.h>   /* Estamos haciendo trabajo del n�cleo */

#define __NO_VERSION__      /* Este no es "el" fichero 
                             * del m�dulo del n�cleo */
#include <linux/module.h>   /* Espec�ficamente, un m�dulo */

#include <linux/version.h>   /* No incluido por 
                              * module.h debido  
                              * a __NO_VERSION__ */



/* Distribuido con CONFIG_MODVERSIONS */
#if CONFIG_MODVERSIONS==1
#define MODVERSIONS
#include <linux/modversions.h>
#endif        




/* Limpieza - deshacemos todo aquello que hizo init_module */
void cleanup_module()
{
  printk("La vida de un m�dulo del n�cleo es corta\n");
}  


