/* procfs.c -  crea un "fichero" en /proc 
 * Copyright (C) 1998-1999 by Ori Pomerantz
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


/* Necesario porque usamos el sistema de ficheros proc */
#include <linux/proc_fs.h>



/* En 2.2.3 /usr/include/linux/version.h se incluye
 * una macro para eso, pero 2.0.35 no lo hace - por lo
 * tanto lo a�ado aqu� si es necesario */
#ifndef KERNEL_VERSION
#define KERNEL_VERSION(a,b,c) ((a)*65536+(b)*256+(c))
#endif



/* Ponemos datos en el fichero del sistema de fichero proc.

   Argumentos
   ==========
   1. El buffer donde los datos van a ser insertados, si
      decides usarlo.
   2. Un puntero a un puntero de caracteres. Esto es �til si
      no quieres usar el buffer asignado por el n�cleo.
   3. La posici�n actual en el fichero.
   4. El tama�o del buffer en el primer argumento.
   5. Cero (�para uso futuro?).

   Uso y Valores de Retorno
   ========================
   Si utilizas tu propio buffer, como yo, pon su situaci�n
   en el segundo argumento y retorna el n�mero de bytes
   usados en el buffer.

   Un valor de retorno de cero significa que actualmente no 
   tienes m�s informaci�n (final del fichero). Un valor negativo
   es una condici�n de error.

   Para M�s Informaci�n
   ====================
   La forma en la que descubr� qu� hacer con esta funci�n 
   no fue leyendo documentaci�n, sino que fue leyendo el c�digo
   que lo utiliza. Justamente mir� para ver para qu� usa el campo
   get_info de la struct proc_dir_entry (Us� una combinaci�n 
   de find y grep, por si est�s interesado), y vi que se usa en
   <directorio del c�digo del n�cleo>/fs/proc/array.c.

   Si algo no es conocido sobre el n�cleo, esta es la forma
   habitual de hacerlo. En Linux tenemos la gran ventaja
   de tener el c�digo fuente del n�cleo gratis - �salo.
 */
int procfile_read(char *buffer, 
		  char **buffer_location, 
		  off_t offset, 
		  int buffer_length, 
		  int zero)
{
  int len;  /* El n�mero de bytes usados realmente */

  /* Esto es static, por lo tanto permanecer� en 
   * memoria cuando abandonemos esta funci�n */
  static char my_buffer[80];  

  static int count = 1;

  /* Damos toda nuestra informaci�n de una vez, por lo tanto
   * si el usuario nos pregunta si tenemos m�s informaci�n
   * la respuesta deber�a de ser no.
   *
   * Esto es importante porque la funci�n est�ndar de lectura
   * de la librer�a deber�a continuar emitiendo la
   * llamada al sistema read hasta que el n�cleo responda
   * que no hay m�s informaci�n, o hasta que el buffer est�
   * lleno.
   */
  if (offset > 0)
    return 0;

  /* Rellenamos el buffer y cogemos su longitud */
  len = sprintf(my_buffer, 
    "Para la vez %d%s, vete!\n", count,
    (count % 100 > 10 && count % 100 < 14) ? "th" : 
      (count % 10 == 1) ? "st" :
        (count % 10 == 2) ? "nd" :
          (count % 10 == 3) ? "rd" : "th" );
  count++;

  /* Dice a la funci�n que llamamos d�nde est� el buffer */
  *buffer_location = my_buffer;

  /* Devolvemos la longitud */
  return len;
}


struct proc_dir_entry Our_Proc_File = 
  {
    0, /* N�mero de Inodo - ign�ralo, ser� rellenado por 
        * proc_register[_dynamic] */
    4, /* Longitud del nombre del fichero */
    "test", /* El nombre del fichero */
    S_IFREG | S_IRUGO, /* Modo del fichero - este es un fichero 
                        * regular que puede ser le�do por su 
                        * due�o, por su grupo, y por todo el mundo */ 
    1,	/* N�mero de enlaces (directorios donde el 
         * fichero est� referenciado) */
    0, 0,  /* El uid y gid para el fichero - se lo damos 
            * a root */
    80, /* El tama�o del fichero devuelto por ls. */
    NULL, /* funciones que pueden ser realizadas en el inodo 
           * (enlazado, borrado, etc.) - no soportamos 
           * ninguna. */
    procfile_read, /* La funci�n read para este fichero, 
                    * la funci�n llamada cuando alguien 
                    * intenta leer algo de el. */
    NULL /* Podemos tener aqu� un funci�n que rellene el
          * inodo del fichero, para habilitarnos el jugar
          * con los permisos, due�o, etc. */ 
  }; 





/* Inicializa el m�dulo - registra el fichero proc */
int init_module()
{
  /* Tiene �xito si proc_register[_dynamic] tiene �xito,
   * falla en otro caso. */
#if LINUX_VERSION_CODE > KERNEL_VERSION(2,2,0)
  /* En la versi�n 2.2, proc_register asigna un n�mero
   * de inodo autom�ticamente si hay cero en la estructura,
   * por lo tanto no necesitamos nada m�s para 
   * proc_register_dynamic
   */


  return proc_register(&proc_root, &Our_Proc_File);
#else
  return proc_register_dynamic(&proc_root, &Our_Proc_File);
#endif
 
  /* proc_root es el directorio raiz para el sistema de ficheros
   * proc (/proc). Aqu� es d�nde queremos que nuestro fichero est�
   * localizado. 
   */
}


/* Limpieza - liberamos nuestro fichero de /proc */
void cleanup_module()
{
  proc_unregister(&proc_root, Our_Proc_File.low_ino);
}  



