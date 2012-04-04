/* procfs.c -  crea un "fichero" en /proc, que permite 
 * entrada y salida. */

/* Copyright (C) 1998-1999 by Ori Pomerantz */


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



#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,2,0)
#include <asm/uaccess.h>  /* para get_user y put_user */
#endif

/* Las funciones del fichero del m�dulo ********************** */


/* Aqu� mantenemos el �ltimo mensaje recibido, para
 * comprobar que podemos procesar nuestra entrada */ 
#define MESSAGE_LENGTH 80
static char Message[MESSAGE_LENGTH];


/* Desde que usamos la estructura de operaciones de fichero. 
 * podemos usar las provisiones de salida especiales de proc - 
 * tenemos que usar una funci�n de lectura est�ndar, y es
 * esta funci�n */
#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,2,0)
static ssize_t module_output(
    struct file *file,   /* El fichero le�do */
    char *buf, /* El buffer donde se van a poner los datos 
                * (en el segmento de usuario) */
    size_t len,  /* La longitud del buffer */
    loff_t *offset) /* Desplazamiento en el fichero - ign�ralo */
#else
static int module_output(
    struct inode *inode, /* El inodo le�do */
    struct file *file,   /* El fichero le�do */
    char *buf, /* El buffer donde se van a poner los datos
                * (en el segmento de usuario) */
    int len)  /* La longitud del buffer */
#endif
{
  static int finished = 0;
  int i;
  char message[MESSAGE_LENGTH+30];

  /* Retornamos 0 para indicar el final del fichero, que 
   * no tenemos m�s informaci�n. En otro caso, los procesos
   * continuar�n leyendo de nosotros en un bucle sin fin. */ 
  if (finished) {
    finished = 0;
    return 0;
  }

  /* Usamos put_user para copiar la cadena de caracteres del
   * segmento de memoria del n�cleo al segmento de memoria de
   * proceso que nos llam�. get_user, BTW, es usado para
   * lo contrario. */
  sprintf(message, "Last input:%s", Message);
  for(i=0; i<len && message[i]; i++) 
    put_user(message[i], buf+i);


  /* Nota, asumimos aqu� que el tama�o del mensaje est� por
   * debajo de la longitud, o se recibir� cortado. En una
   * situaci�n de la vida real, si el tama�o del mensaje es menor
   * que la longitud entonces retornamos la longitud y en la 
   * segunda llamada empezamos a rellenar el buffer con el byte
   * longitud+1 del mensaje. */
  finished = 1; 

  return i;  /* Retornamos el n�mero de bytes "leidos" */
}


/* Esta funci�n recibe la entrada del usuario cuando el
 * usuario escribe en el fichero /proc. */ 
#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,2,0)
static ssize_t module_input(
    struct file *file,   /* El mismo fichero */
    const char *buf,     /* El buffer con la entrada */
    size_t length,       /* La longitud del buffer */
    loff_t *offset)      /* desplazamiento del fichero - ign�ralo */
#else
static int module_input(
    struct inode *inode, /* El inodo del fichero */
    struct file *file,   /* El mismo fichero */
    const char *buf,     /* El buffer con la entrada */
    int length)          /* La longitud del buffer */
#endif
{
  int i;

  /* Pone la entrada en Message, donde module_output 
   * posteriormente ser� capaz de usarlo */
  for(i=0; i<MESSAGE_LENGTH-1 && i<length; i++)
#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,2,0)
    get_user(Message[i], buf+i);
  /* En la versi�n 2.2 la sem�ntica de get_user cambi�,
   * no volver� a devolver un car�cter, excepto una
   * variable para rellenar como primer argumento y 
   * un puntero al segmento de usuario para rellenarlo 
   * como segundo.
   *
   * El motivo para este cambio es que en la versi�n 2.2
   * get_user puede leer un short o un int. La forma
   * en la que conoce el tipo de la variable que 
   * deber�a de leer es usando sizeof, y para lo que 
   * necesita la variable.
   */ 
#else 
    Message[i] = get_user(buf+i);
#endif
  Message[i] = '\0';  /* queremos un est�ndar, cadena 
                       * de caracteres terminada en cero */
  
  /* Necesitamos devolver el n�mero de caracteres de entrada
   * usados */ 
  return i;
}



/* Esta funci�n decide si permite una operaci�n (retorna cero)
 * o no la permite (retornando distinto de cero, lo cual indica porqu�
 * no est� permitido).
 *
 * La operaci�n puede ser uno de los siguientes valores:
 * 0 - Ejecuta (ejecuta el "fichero" - sin sentido en nuestro caso)
 * 2 - Escribe (entrada en el m�dulo del n�cleo)
 * 4 - Lee (salida desde el m�dulo del n�cleo)
 *
 * Esta es la funci�n real que chequea los permisos del
 * fichero. Los permisos retornados por ls -l son s�lo
 * para referencia, y pueden ser sobreescritos aqu�. 
 */
static int module_permission(struct inode *inode, int op)
{
  /* Permitimos a todo el mundo leer desde nuestro m�dulo, pero 
   * s�lo root (uid 0) puede escribir en el */ 
  if (op == 4 || (op == 2 && current->euid == 0))
    return 0; 

  /* Si es alg�n otro, el acceso es denegado */
  return -EACCES;
}




/* El fichero est� abierto - realmente no nos preocupamos de
 * esto, pero significa que necesitamos incrementar el
 * contador de referencias del m�dulo. */ 
int module_open(struct inode *inode, struct file *file)
{
  MOD_INC_USE_COUNT;
 
  return 0;
}


/* El fichero est� cerrado - otra vez, interesante s�lo por
 * el contador de referencias. */
#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,2,0)
int module_close(struct inode *inode, struct file *file)
#else
void module_close(struct inode *inode, struct file *file)
#endif
{
  MOD_DEC_USE_COUNT;

#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,2,0)
  return 0;  /* realizado con �xito */
#endif
}


/* Estructuras para registrar el fichero /proc, con
 * punteros a todas las funciones relevantes. ********** */


/* Las operaciones del fichero para nuestro fichero proc. Es aqu�
 * donde colocamos los punteros a todas las funciones llamadas
 * cuando alguien intenta hacer algo en nuestro fichero. NULL
 * significa que no queremos tratar con algo. */
static struct file_operations File_Ops_4_Our_Proc_File =
  {
    NULL,  /* lseek */
    module_output,  /* "lee" desde el fichero */
    module_input,   /* "escribe" en el fichero */
    NULL,  /* readdir */
    NULL,  /* select */
    NULL,  /* ioctl */
    NULL,  /* mmap */
    module_open,    /* Alguien abri� el fichero */
#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,2,0)
    NULL,   /* borrado, a�adido aqu� en la versi�n 2.2 */
#endif
    module_close,    /* Alguien cerr� el fichero */
    /* etc. etc. etc. ( son todas dadas en
     * /usr/include/linux/fs.h). Ya que no ponemos nada
     * m�s aqu�, el sistema mantendr� los datos por defecto
     * que en Unix son ceros (NULLs cuando cogemos
     * punteros). */
  };



/* Las operaciones del inodo para nuestro fichero proc. Las necesitamos,
 * por lo tanto tendremos alg�n lugar para especificar las 
 * estructuras de operaciones del fichero que queremos usar. Tambi�n es
 * posible especificar funciones a ser llamadas para cualquier cosa
 * que pudiera ser hecha en un inodo (como no queremos molestar, 
 * las ponemos a NULL). */
static struct inode_operations Inode_Ops_4_Our_Proc_File =
  {
    &File_Ops_4_Our_Proc_File,
    NULL, /* crear */
    NULL, /* lookup */
    NULL, /* enlazar */
    NULL, /* desenlazar */
    NULL, /* enlace simb�lico */
    NULL, /* mkdir */
    NULL, /* rmdir */
    NULL, /* mknod */
    NULL, /* renombrar */
    NULL, /* leer enlace */
    NULL, /* seguir el enlace */
    NULL, /* leer p�gina */
    NULL, /* escribir p�gina */
    NULL, /* bmap */
    NULL, /* cortar */
    module_permission /* chequeo para permisos */
  };


/* Entrada de directorio */
static struct proc_dir_entry Our_Proc_File = 
  {
    0, /* N�mero de inodo - ign�ralo, ser� autom�ticamente rellenado
        * por proc_register[_dynamic] */ 
    7, /* Longitud del nombre del fichero */
    "rw_test", /* El nombre del fichero */
    S_IFREG | S_IRUGO | S_IWUSR, 
    /* Modo del fichero - este es un fichero normal el cual
     * puede ser le�do por su due�o, su grupo, y por todo el 
     * mundo. Tambi�n, su due�o puede escribir en �l.
     *
     * Realmente, este campo es s�lo para referencia, es
     * module_permission el que hace el chequeo actual.
     * Puede usar este campo, pero en nuestra implementaci�n 
     * no lo hace, por simplificaci�n. */
    1,  /* N�mero de enlaces (directorios donde el fichero 
         * est� referenciado) */
    0, 0,  /* El uid y gid para el fichero - 
            * se lo damos a root */
    80, /* El tama�o del fichero reportado por ls. */
    &Inode_Ops_4_Our_Proc_File, 
    /* Un puntero a la estructura del inodo para
     * el fichero, si lo necesitamos. En nuestro caso
     * lo hacemos, porque necesitamos una funci�n de escritura. */
    NULL  
    /* La funci�n de lectura para el fichero. Irrelevante
     * porque lo ponemos en la estructura de inodo anterior */
  }; 



/* Inicializaci�n del m�dulo y limpieza ******************* */

/* Inicializa el m�dulo - registra el fichero proc */
int init_module()
{
  /* Tiene �xito si proc_register[_dynamic] tiene �xito, 
   * falla en otro caso */
#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,2,0)
  /* En la versi�n 2.2, proc_register asigna din�micamente un n�mero de
   * inodo autom�ticamente si hay un cero en la estructura, por lo 
   * tanto no se necesita m�s para proc_register_dynamic
   */
  return proc_register(&proc_root, &Our_Proc_File);
#else
  return proc_register_dynamic(&proc_root, &Our_Proc_File);
#endif
}


/* Limpieza - liberamos nuestro fichero de /proc */
void cleanup_module()
{
  proc_unregister(&proc_root, Our_Proc_File.low_ino);
}  
