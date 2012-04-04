/* sleep.c - crea un fichero /proc, y si varios procesos
 * intentan abrirlo al mismo tiempo, los pone
 * a todos a dormir */

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

/* Necesario porque usamos el sistema de ficheros proc */
#include <linux/proc_fs.h>

/* Para poner los procesos a dormir y despertarlos */
#include <linux/sched.h>
#include <linux/wrapper.h>



/* En 2.2.3 /usr/include/linux/version.h se incluye una
 * macro para esto, pero 2.0.35 no lo hace - por lo tanto
 * lo a�ado aqu� si es necesario. */
#ifndef KERNEL_VERSION
#define KERNEL_VERSION(a,b,c) ((a)*65536+(b)*256+(c))
#endif


#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,2,0)
#include <asm/uaccess.h>  /* para get_user y put_user */
#endif


/* Las funciones de fichero del m�dulo ********************** */

/* Aqu� mantenemos el �ltimo mensaje recibido, para probar
 * que podemos procesar nuestra entrada */
#define MESSAGE_LENGTH 80
static char Message[MESSAGE_LENGTH];


/* Como usamos las estructuras de operaciones de ficheros, no
 * podemos usar las provisiones de salida de proc especiales - tenemos
 * que usar una funci�n est�ndar de lectura, que es esta*/
#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,2,0)
static ssize_t module_output(
    struct file *file,   /* El fichero a leer */
    char *buf, /* El buffer donde poner los datos (en el
                * segmento de usuario) */
    size_t len,  /* La longitud del buffer */
    loff_t *offset) /* Desplazamiento en el fichero - ign�ralo */
#else
static int module_output(
    struct inode *inode, /* El inodo a leer */
    struct file *file,   /* El fichero a leer */
    char *buf, /* El buffer donde poner los datos (en el
                * segmento de usuario) */
    int len)  /* La longitud del buffer */
#endif
{
  static int finished = 0;
  int i;
  char message[MESSAGE_LENGTH+30];

  /* Retorna 0 para significar el final del fichero - que no
   * tenemos nada m�s que decir en este punto. */ 
  if (finished) {
    finished = 0;
    return 0;
  }

  /* Si no entiendes esto ahora, eres un
   * programador del n�cleo sin esperanza. */
  sprintf(message, "Ultima entrada:%s\n", Message);
  for(i=0; i<len && message[i]; i++) 
    put_user(message[i], buf+i);

  finished = 1;
  return i;  /* Retorna el n�mero de bytes "le�dos" */
}


/* Esta funci�n recibe la entrada del usuario cuando
 * el usuario escribe el fichero /proc. */
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
   * m�s tarde ser� capaz de usarlo */
  for(i=0; i<MESSAGE_LENGTH-1 && i<length; i++)
#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,2,0)
     get_user(Message[i], buf+i);
#else
  Message[i] = get_user(buf+i);
#endif
/* queremos un est�ndar, cadena de caracteres terminada en cero */
  Message[i] = '\0';  
  
  /* Necesitamos devolver el n�mero de caracteres
   * de entrada usados */
  return i;
}

/* 1 si el fichero est� actualmente abierto por alguien */
int Already_Open = 0;

/* Cola de procesos que quieren nuestro fichero */
static struct wait_queue *WaitQ = NULL;


/* Llamado cuando el fichero /proc se abre */
static int module_open(struct inode *inode,
                       struct file *file)
{
  /* Si las banderas del fichero incluyen O_NONBLOCK, esto
   * significa que el proceso no quiere esperar al fichero.
   * En este caso, si el fichero ya est� abierto, deberemos
   * fallar con -EAGAIN, significando que "tienes que intentarlo
   * otra vez", en vez de bloquear un proceso que tendr�a que
   * estar despierto. */
  if ((file->f_flags & O_NONBLOCK) && Already_Open) 
    return -EAGAIN;

  /* Este es el sitio correcto para MOD_INC_USE_COUNT
   * porque si un proceso est� en el bucle, que
   * est� dentro del m�dulo, el m�dulo del n�cleo no
   * deber�a ser quitado. */
  MOD_INC_USE_COUNT;

  /* Si el fichero ya est� abierto, espera hasta que no lo est� */
  while (Already_Open) 
  {
#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,2,0)
    int i, is_sig=0;
#endif

    /* Esta funci�n pone el proceso actual, 
     * incluyendo algunas llamada al sistema, como nosotros, 
     * a dormir. La ejecuci�n ser� retomada correctamente despu�s
     * de la llamada a la funci�n, o porque alguien
     * llam� a wake_up(&WaitQ) (s�lo module_close hace esto,
     * cuando el fichero se cierra) o cuando una se�al, como
     * Ctrl-C, es enviada al proceso */
    module_interruptible_sleep_on(&WaitQ);
 
    /* Si despertamos porque tenemos una se�al no estamos
     * bloqueando, retornamos -EINTR (falla la llamada al
     * sistema). Esto permite a los procesos ser matados o
     * parados. */


/*
 * Emmanuel Papirakis:
 *
 * Esta es una peque�a actualizaci�n para trabajar con 2.2.*. Las
 * se�ales son ahora contenidas en dos palabras (64 bits) y son
 * almacenadas en una estructura que contiene un array de dos
 * unsigned longs. Ahora tenemos que realizar 2 chequeos en nuestro if.
 *
 * Ori Pomerantz:
 *
 * Nadie me prometi� que no usar�an nunca m�s de 64 bits, o
 * que este libro no ser�a usado para una versi�n de Linux
 * con un tama�o de palabra de 16 bits. En cualquier caso este 
 * c�digo deber�a de funcionar.
 */	  
#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,2,0)

    for(i=0; i<_NSIG_WORDS && !is_sig; i++)
      is_sig = current->signal.sig[i] & 
        ~current->blocked.sig[i];
    if (is_sig) {
#else
    if (current->signal & ~current->blocked) {
#endif
      /* Es importante poner MOD_DEC_USE_COUNT aqu�.
       * porque los procesos d�nde open es interrumpido
       * no tendr�n nunca un close correspondiente. Si
       * no decrementamos el contador de uso aqu�, lo dejaremos
       * con un valor positivo el cual no nos dar�
       * la oportunidad de llegar hasta 0, d�ndonos un m�dulo inmortal,
       * que s�lo se puede matar reiniciando la m�quina. */
      MOD_DEC_USE_COUNT;
      return -EINTR;
    }
  }

  /* Si estamos aqu�, Already_Open debe ser cero */

  /* Abre el fichero */
  Already_Open = 1;
  return 0;  /* Permite el acceso */
}



/* Llamado cuando el fichero /proc se cierra*/
#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,2,0)
int module_close(struct inode *inode, struct file *file)
#else
void module_close(struct inode *inode, struct file *file)
#endif
{
  /* Establece Already_Open a cero, por lo tanto uno de los procesos
   * en WaitQ ser� capaz de establecer Already_Open otra vez a uno y
   * abrir el fichero. Todos los otros procesos ser�n llamados cuando
   * Already_Open vuelva a ser uno, por lo tanto volver�n a
   * dormir. */
  Already_Open = 0;

  /* Despertamos a todos los procesos en WaitQ, por lo tanto si
   * alguien est� esperando por el fichero, lo puede tener. */
  module_wake_up(&WaitQ);

  MOD_DEC_USE_COUNT;

#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,2,0)
  return 0;  /* finalizado con �xito */
#endif
}




/* Esta funci�n decide cuando permite una operaci�n (retorna cero)
 * o no la permite (retorna distinto de cero lo cual indica porque
 * no es permitida).
 *
 * Las operaciones pueden ser una de los siguientes valores:
 * 0 - Ejecuta (ejecuta el "file" - sin p�rdida de significado en
 *     nuestro caso)
 * 2 - Escribe (entrada al m�dulo del n�cleo)
 * 4 - Lectura (salida desde el m�dulo del n�cleo)
 *
 * Esta es la funci�n real que chequea los permisos del
 * fichero. Los permisos retornados por ls -l son s�lo
 * para referencia, y pueden ser sobreescritos aqu�.
 */
static int module_permission(struct inode *inode, int op)
{
  /* Permitimos a todo el mundo leer de nuestro m�dulo, pero
   * s�lo root (uid 0) puede escribir en el */
  if (op == 4 || (op == 2 && current->euid == 0))
    return 0; 

  /* Si es otro, el acceso es denegado */
  return -EACCES;
}


/* Estructuras para registrar como fichero /proc, con
 * punteros a todas las funciones relevantes. ********** */

/* Operaciones de fichero para nuestro fichero proc. Aqu� es
 * donde colocamos los punteros a todas las funciones llamadas
 * cuando alguien intenta hacer algo a nuestro fichero. NULL
 * significa que no queremos tratar con algo. */
static struct file_operations File_Ops_4_Our_Proc_File =
  {
    NULL,  /* lseek */
    module_output,  /* "lee" del fichero */
    module_input,   /* "escribe" al fichero */
    NULL,  /* readdir */
    NULL,  /* seleccionar */
    NULL,  /* ioctl */
    NULL,  /* mmap */
    module_open,/* llamado cuando el fichero /proc es abierto */
#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,2,0)
    NULL,   /* borrado */
#endif
    module_close      /* llamado cuando es cerrado */
  };



/* Las operaciones de inodo para nuestro fichero proc. Las necesitamos
 * para tener algo donde especificar la estructura
 * de operaciones del fichero que queremos usar, y las funciones que 
 * usamos para los permisos. Tambi�n es posible especificar funciones que
 * pueden ser llamadas por alguien m�s, lo cual se puede realizar en un
 * inodo (como no queremos ninguna, ponemos NULL). */
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
    NULL, /* renonmbrar */
    NULL, /* leer enlace */
    NULL, /* seguir enlace */
    NULL, /* lee p�gina */
    NULL, /* excribe p�gina */
    NULL, /* bmap */
    NULL, /* corta */
    module_permission /* chequea los permisos */
  };

/* Entrada del directorio */
static struct proc_dir_entry Our_Proc_File = 
  {
    0, /* N�mero de inodo - ign�ralo, ser� rellenado por 
        * proc_register[_dynamic] */
    5, /* Longitud del nombre del fichero */
    "sleep", /* El nombre del fichero */
    S_IFREG | S_IRUGO | S_IWUSR, 
    /* Modo del fichero - este es un fichero normal que
     * puede ser le�do por su due�o, su grupo, y por
     * todo el mundo. Adem�s, su due�o puede escribir en �l.
     *
     * Realmente, este campo es s�lo para referencia, es
     * module_permission el que realiza el chequeo actual. 
     * Puede usar este campo, pero en nuestra implementaci�n no
     * lo hace, por simplificaci�n. */
    1,  /* N�mero de enlaces (directorios donde el fichero 
         * es referenciado) */
    0, 0,  /* El uid y gid para el fichero - se los damos 
            * a root */
    80, /* El tama�o del fichero indicado por ls. */
    &Inode_Ops_4_Our_Proc_File, 
    /* Un puntero a la estructura de inodos para
     * el fichero, si lo necesitamos. En nuestro caso
     * lo hacemos, porque necesitamos una funci�n write (de escritura). */
    NULL  /* La funci�n read para el fichero. 
           * Irrelevante, porque lo ponemos
           * en la estructura del inodo anterior */
  }; 



/* Inicializaci�n y Limpieza del m�dulo **************** */


/* Inicializa el m�dulo - registra el fichero proc */
int init_module()
{
  /* Tiene �xito si proc_register_dynamic tiene �xito,
   * falla en otro caso */
#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,2,0)
  return proc_register(&proc_root, &Our_Proc_File);
#else
  return proc_register_dynamic(&proc_root, &Our_Proc_File);
#endif 

  /* proc_root es el directorio raiz para el sistema de
   * ficheros proc (/proc). Es decir, donde queremos que sea
   * localizado nuestro fichero. */
}


/* Limpieza - libera nuestro fichero en /proc. Esto puede
 * ser peligroso si a�n hay procesos esperando en WaitQ, porque
 * ellos est�n dentro de nuestra funci�n open, la cual ser�
 * descargada. Explicar� que hacer para quitar un m�dulo
 * del n�cleo en tal caso en el cap�tulo 10. */
void cleanup_module()
{
  proc_unregister(&proc_root, Our_Proc_File.low_ino);
}  





















