/* sched.c - planifica una funci�n para ser llamada en
 * cada interrupci�n del reloj */


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

/* Necesario porque usamos el sistema de ficheros proc */
#include <linux/proc_fs.h>

/* Planificamos tareas aqu� */
#include <linux/tqueue.h>

/* Tambi�n necesitamos la habilidad para ponernos a dormir
 * y despertanos m�s tarde */
#include <linux/sched.h>

/* En 2.2.3 /usr/include/linux/version.h se incluye una
 * macro para esto, pero 2.0.35 no lo hace - por lo tanto
 * lo a�ado aqu� si es necesario. */
#ifndef KERNEL_VERSION
#define KERNEL_VERSION(a,b,c) ((a)*65536+(b)*256+(c))
#endif



/* El n�mero de veces que la interrupci�n del reloj
 * ha sido llamada */
static int TimerIntrpt = 0;


/* Esto lo usa cleanup, para evitar que el m�dulo
 * sea descargado mientras intrpt_routine est�
 * a�n en la cola de tareas */ 
static struct wait_queue *WaitQ = NULL;

static void intrpt_routine(void *);


/* La estructura de cola de tareas para esta tarea, de tqueue.h */
static struct tq_struct Task = {
  NULL,   /* Pr�ximo elemento en la lista - queue_task har� 
           * esto por nosotros */
  0,      /* Una bandera significando que todav�a no hemos 
	   * insertado en la cola de tareas */
  intrpt_routine, /* La funci�n a ejecutar */
  NULL    /* El par�metro void* para esta funci�n */
};



/* Esta funci�n ser� llamada en cada interrupci�n de reloj.
 * N�tese que el puntero *void - funciones de la tarea
 * puede ser usado para m�s de un prop�sito, obteniendo
 * cada vez un par�metro diferente. */

static void intrpt_routine(void *irrelevant)
{
  /* Incrementa el contador */
  TimerIntrpt++;

  /* Si cleanup nos quiere matar */
  if (WaitQ != NULL) 
    wake_up(&WaitQ);   /* Ahora cleanup_module puede retornar */
  else
    /* Nos vuelve a poner en la cola de tareas */
    queue_task(&Task, &tq_timer);  
}




/* Pone datos en el fichero del sistema de ficheros proc. */
int procfile_read(char *buffer, 
                  char **buffer_location, off_t offset, 
                  int buffer_length, int zero)
{
  int len;  /* N�mero de bytes usados actualmente */

  /* Esto es est�tico por lo tanto permanecer� en memoria 
   * cuando deje esta funci�n */
  static char my_buffer[80];  

  static int count = 1;

  /* Damos toda nuestra informaci�n de una vez, por lo
   * tanto si alguien nos pregunta si tenemos m�s
   * informaci�n la respuesta deber�a de ser no.
   */
  if (offset > 0)
    return 0;

  /* Rellena el buffer y obtiene su longitud */
  len = sprintf(my_buffer, 
                "Timer fue llamado %d veces\n", 
                TimerIntrpt);
  count++;

  /* Dice a la funci�n que nos ha llamado d�nde
   * est� el buffer */
  *buffer_location = my_buffer;

  /* Retorna la longitud */
  return len;
}


struct proc_dir_entry Our_Proc_File = 
  {
    0, /* N�mero de inodo - ign�ralo, ser� rellenado por 
        * proc_register_dynamic */
    5, /* Longitud del nombre del fichero */
    "sched", /* El nombre del fichero */
    S_IFREG | S_IRUGO, 
    /* Modo del fichero - este es un fichero normal que puede
     * ser leido por su due�o, su grupo, y por todo el mundo */
    1,  /* N�mero de enlaces (directorios donde  
         * el fichero es referenciado) */
    0, 0,  /* El uid y gid para el fichero - se lo damos 
            * a root */
    80, /* El tama�o del fichero indicado por ls. */
    NULL, /* funciones que pueden ser realizadas en el 
           * inodo (enlace, borrado, etc.) - no 
           * soportamos ninguna. */
    procfile_read, 
    /* La funci�n read para este fichero, la funci�n llamada
     * cuando alguien intenta leer algo de �l. */
    NULL 
    /* Podemos tener aqu� una funci�n para rellenar
     * el inodo del fichero, para permitirnos jugar con
     * los permisos, due�o, etc. */
  }; 


/* Inicializa el m�dulo - registra el fichero proc */
int init_module()
{
  /* Pone la tarea en la cola de tareas tq_timer, por lo
   * tanto ser� ejecutado en la siguiente interrupci�n del reloj */
  queue_task(&Task, &tq_timer);

  /* Tiene �xito si proc_register_dynamic tiene �xito.
   * falla en otro caso */
#if LINUX_VERSION_CODE > KERNEL_VERSION(2,2,0)
  return proc_register(&proc_root, &Our_Proc_File);
#else
  return proc_register_dynamic(&proc_root, &Our_Proc_File);
#endif
}


/* Limpieza */
void cleanup_module()
{
  /* libera nuestro fichero /proc */
  proc_unregister(&proc_root, Our_Proc_File.low_ino);
  
  /* Duerme hasta que intrpt_routine es llamada por �ltima
   * vez. Esto es necesario, porque en otro caso, desasignaremos
   * la memoria manteniendo intrpt_routine y Task mientras
   * tq_timer a�n las referencia. Destacar que no permitimos
   * se�ales que nos interrumpan.
   *
   * Como WaitQ no es ahora NULL, esto dice autom�ticamente
   * a la rutina de interrupci�n su momento de muerte. */
 sleep_on(&WaitQ);
}  






















