/* start.c 
 * Copyright (C) 1999 by Ori Pomerantz
 * 
 * "Hola, mundo" - la versi�n m�dulo del n�cleo.
 * Este fichero incluye justamente la rutina de comienzo
 */

/* Los ficheros de cabeceras necesarios */

/* Est�ndar en los m�dulos del n�cleo */
#include <linux/kernel.h>   /* Estamos haciendo trabajo del n�cleo */
#include <linux/module.h>   /* Espec�ficamente, un m�dulo */



/* Distribuido con CONFIG_MODVERSIONS */
#if CONFIG_MODVERSIONS==1
#define MODVERSIONS
#include <linux/modversions.h>
#endif        



/* Inicializa el m�dulo */
int init_module()
{
  printk("Hola, mundo - este es el n�cleo hablando\n");

  /* Si retornamos un valor distinto de cero, significa
   * que init_module fall� y el m�dulo del n�cleo
   * no puede ser cargado */
  return 0;
}


