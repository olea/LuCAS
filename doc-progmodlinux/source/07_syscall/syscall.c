/* syscall.c 
 * 
 * Ejemplo de llamada al sistema "robando" 
 */


/* Copyright (C) 1998-99 por Ori Pomerantz */


/* Los ficheros de cabeceras necesarios */

/* Est�ndar en los m�dulos del n�cleo */
#include <linux/kernel.h>   /* Estamos haciendo trabajo del n�cleo */
#include <linux/module.h>   /* Espec�ficamente, un m�dulo */

/* Distribuido con CONFIG_MODVERSIONS */
#if CONFIG_MODVERSIONS==1
#define MODVERSIONS
#include <linux/modversions.h>
#endif        

#include <sys/syscall.h>  /* La lista de llamadas al sistema */

/* Para el actual estructura (proceso), necesitamos esto
 * para conocer qui�n es el usuario actual. */
#include <linux/sched.h>  




/* En 2.2.3 /usr/include/linux/version.h se incluye
 * una macro para esto, pero 2.0.35 no lo hace - por lo
 * tanto lo a�ado aqu� si es necesario */
#ifndef KERNEL_VERSION
#define KERNEL_VERSION(a,b,c) ((a)*65536+(b)*256+(c))
#endif



#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,2,0)
#include <asm/uaccess.h>
#endif



/* La tabla de llamadas al sistema (una tabla de funciones).
 * Nosotros justamente definimos esto como externo, y el
 * n�cleo lo rellener� para nosotros cuando instalemos el m�dulo
 */
extern void *sys_call_table[];


/* UID que queremos espiar - ser� rellenado desde la
 * linea de comandos */
int uid;  

#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,2,0)
MODULE_PARM(uid, "i");
#endif

/* Un puntero a la llamada al sistema original. El motivo para
 * mantener esto, mejor que llamar a la funci�n original
 * (sys_open), es que alguien quiz�s haya reemplazado la 
 * llamada al sistema antes que nosotros. Destacar que esto
 * no es seguro al 100%, porque si otro m�dulo reemplaza sys_open
 * antes que nosotros, entonces cuando insertemos llamaremos 
 * a la funci�n en ese m�dulo - y quiz�s sea borrado
 * antes que nosotros.
 *
 * Otro motivo para esto es que no podemos tener sys_open.
 * Es una variable est�tica, por lo tanto no es exportada. */
asmlinkage int (*original_call)(const char *, int, int);



/* Por alg�n motivo, en 2.2.3 current-uid me da cero, en vez de
 * la ID real del usuario. He intentado encontrar d�nde viene mal,
 * pero no lo he podido hacer en un breve periodo de tiempo, y 
 * soy vago - por lo tanto usaremos la llamada al sistema para 
 * obtener el uid, de la forma que un proceso lo har�a.
 *
 * Por alg�n motivo, despu�s de que recompilara el n�cleo este
 * problema se ha ido.
 */
asmlinkage int (*getuid_call)();



/* La funci�n con la que reemplazaremos sys_open (la
 * funci�n llamada cuando llamas a la llamada al sistema open).
 * Para encontrar el prototipo exacto, con el n�mero y tipo de
 * argumentos, encontramos primero la funci�n original (es en
 * fs/open.c).
 *
 * En teor�a, esto significa que estamos enlazados a la versi�n
 * actual del n�cleo. En la pr�ctica, las llamadas al sistema nunca
 * cambian (se destruir�an naufragando y requerir�an que los programas
 * fuesen recompilados, ya que las llamadas al sistema son las 
 * interfaces entre el n�cleo y los procesos).
 */
asmlinkage int our_sys_open(const char *filename, 
                            int flags, 
                            int mode)
{
  int i = 0;
  char ch;

  /* Checkea si este es el usuario que estamos espiando */
  if (uid == getuid_call()) {  
   /* getuid_call es la llamada al sistema getuid,
    * la cual nos da el uid del usuario que ejecut�
    * el proceso que llam� a la llamada al sistema
    * que tenemos. */

    /* Indica el fichero, si es relevante */
    printk("Fichero abierto por %d: ", uid); 
    do {
#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,2,0)
      get_user(ch, filename+i);
#else
      ch = get_user(filename+i);
#endif
      i++;
      printk("%c", ch);
    } while (ch != 0);
    printk("\n");
  }

  /* Llamamos a la sys_open original - en otro caso, perdemos
   * la habilidad para abrir ficheros */
  return original_call(filename, flags, mode);
}



/* Inicializa el m�dulo - reemplaza la llamada al sistema */
int init_module()
{
  /* Peligro - muy tarde para �l ahora, pero quiz�s 
   * la pr�xima vez... */
  printk("Soy peligroso. Espero que hayas hecho un ");
  printk("sync antes de insertarme.\n");
  printk("Mi duplicado, cleanup_module(), es todav�a"); 
  printk("m�s peligroso. Si\n");
  printk("valoras tu sistema de ficheros, ser� mejor ");
  printk("que hagas \"sync; rmmod\" \n");
  printk("cuando borres este m�dulo.\n");

  /* Mantiene un puntero a la funci�n original en
   * original_call, y entonces reemplaza la llamada al sistema
   * en la tabla de llamadas al sistema con our_sys_open */
  original_call = sys_call_table[__NR_open];
  sys_call_table[__NR_open] = our_sys_open;

  /* Para obtener la direcci�n de la funci�n para la
   * llamada al sistema foo, va a sys_call_table[__NR_foo]. */

  printk("Espiando el UID:%d\n", uid);

  /* Coje la llamada al sistema para getuid */
  getuid_call = sys_call_table[__NR_getuid];

  return 0;
}


/* Limpieza - libera el fichero apropiado de /proc */
void cleanup_module()
{
  /* Retorna la llamada al sistema a la normalidad */
  if (sys_call_table[__NR_open] != our_sys_open) {
    printk("Alguien m�s jug� con la llamada al sistema ");
    printk("open\n");
    printk("El sistema quiz�s haya sido dejado ");
    printk("en un estado iniestable.\n");
  }

  sys_call_table[__NR_open] = original_call;
}  










