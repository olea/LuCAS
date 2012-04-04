/* intrpt.c - Un manejador de interrupciones. */


/* Copyright (C) 1998 por Ori Pomerantz */



/* Los ficheros de cabeceras necesarios */

/* Est�ndar en los m�dulos del n�cleo */
#include <linux/kernel.h>   /* Estamos haciendo trabajo del n�cleo */
#include <linux/module.h>   /* Espec�ficamente, un m�dulo */

/* Distribuido con CONFIG_MODVERSIONS */
#if CONFIG_MODVERSIONS==1
#define MODVERSIONS
#include <linux/modversions.h>
#endif        

#include <linux/sched.h>
#include <linux/tqueue.h>

/* Queremos una interrupci�n */
#include <linux/interrupt.h>

#include <asm/io.h>


/* En 2.2.3 /usr/include/linux/version.h se incluye una
 * macro para esto, pero 2.0.35 no lo hace - por lo tanto
 * lo a�ado aqu� si es necesario. */
#ifndef KERNEL_VERSION
#define KERNEL_VERSION(a,b,c) ((a)*65536+(b)*256+(c))
#endif



/* Bottom Half - esto ser� llamado por el n�cleo
 * tan pronto como sea seguro hacer todo lo normalmente 
 * permitido por los m�dulos del n�cleo. */ 
static void got_char(void *scancode)
{
  printk("C�digo le�do %x %s.\n",
    (int) *((char *) scancode) & 0x7F,
    *((char *) scancode) & 0x80 ? "Liberado" : "Presionado");
}


/* Esta funci�n sirve para las interrupciones de teclado. Lee 
 * la informaci�n relevante desde el teclado y entonces
 * planifica el bottom half para ejecutarse cuando el n�cleo
 * lo considere seguro. */
void irq_handler(int irq, 
                 void *dev_id, 
                 struct pt_regs *regs)
{
  /* Estas variables son est�ticas porque necesitan ser
   * accesibles (a trav�s de punteros) por la rutina bottom
   * half. */
  static unsigned char scancode;
  static struct tq_struct task = 
        {NULL, 0, got_char, &scancode};
  unsigned char status;

  /* Lee el estado del teclado */
  status = inb(0x64);
  scancode = inb(0x60);
  
  /* Planifica el bottom half para ejecutarse */
#if LINUX_VERSION_CODE > KERNEL_VERSION(2,2,0)
  queue_task(&task, &tq_immediate);
#else
  queue_task_irq(&task, &tq_immediate);
#endif
  mark_bh(IMMEDIATE_BH);
}



/* Inicializa el m�dulo - registra el manejador de IRQs */
int init_module()
{
  /* Como el manejador de teclado no coexistir� con
   * otro manejador, tal como nosotros, tenemos que deshabilitarlo
   * (liberar su IRQ) antes de hacer algo. Ya que nosotros
   * no conocemos d�nde est�, no hay forma de reinstalarlo 
   * despu�s - por lo tanto la computadora tendr� que ser reiniciada
   * cuando halla sido realizado.
   */
  free_irq(1, NULL);

  /* Petici�n IRQ 1, la IRQ del teclado, para nuestro 
   * irq_handler. */
  return request_irq(
    1,  /* El n�mero de la IRQ del teclado en PCs */ 
    irq_handler,  /* nuestro manejador */
    SA_SHIRQ, 
    /* SA_SHIRQ significa que queremos tener otro
     * manejador en este IRQ.
     *
     * SA_INTERRUPT puede ser usado para
     * manejarla en una interrupci�n r�pida. 
     */
    "test_keyboard_irq_handler", NULL);
}


/* Limpieza */
void cleanup_module()
{
  /* Esto est� aqu� s�lo para completar. Es totalmente
   * irrelevante, ya que no tenemos forma de restaurar 
   * la interrupci�n normal de teclado, por lo tanto
   * la computadora est� totalmente inservible y tiene que
   * ser reiniciada. */
  free_irq(1, NULL);
}  






















