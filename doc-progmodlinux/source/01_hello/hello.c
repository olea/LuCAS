/* hello.c 
 * Copyright (C) 1998 by Ori Pomerantz
 * 
 * "Hello, world" - la versi�n m�dulo del n�cleo. 
 */

/* Los archivos de cabeceras necesarios */

/* Est�ndar en los m�dulos del n�cleo */
#include <linux/kernel.h>   /* Estamos realizando trabajo del n�cleo */
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


/* Limpieza - deshacemos todo aquello que hizo init_module */
void cleanup_module()
{
  printk("La vida de un m�dulo del n�cleo es corta\n");
}  
