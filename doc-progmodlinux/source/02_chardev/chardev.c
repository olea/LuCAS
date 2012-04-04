/* chardev.c 
 * Copyright (C) 1998-1999 by Ori Pomerantz
 * 
 * Crea un dispositivo de car�cter (s�lo lectura)
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

/* Para dispositivos de car�cter */
#include <linux/fs.h>       /* Las definiciones de dispositivos 
                             * de car�cter est�n aqu� */
#include <linux/wrapper.h>  /* Un envoltorio que 
                             * no hace nada actualmente,
                             * pero que quiz�s ayude para
                             * compatibilizar con futuras
                             * versiones de Linux */


/* En 2.2.3 /usr/include/linux/version.h incluye
 * una macro para esto, pero 2.0.35 no lo hace - por lo 
 * tanto lo a�ado aqu� si es necesario */
#ifndef KERNEL_VERSION
#define KERNEL_VERSION(a,b,c) ((a)*65536+(b)*256+(c))
#endif


/* Compilaci�n condicional. LINUX_VERSION_CODE es
 * el c�digo (como KERNEL_VERSION) de esta versi�n */
#if LINUX_VERSION_CODE > KERNEL_VERSION(2,2,0)
#include <asm/uaccess.h>  /* for put_user */
#endif

			     

#define SUCCESS 0


/* Declaraciones de Dispositivo **************************** */

/* El nombre de nuestro dispositivo, tal como aparecer� 
 * en /proc/devices */
#define DEVICE_NAME "char_dev"


/* La m�xima longitud del mensaje desde el dispositivo */
#define BUF_LEN 80

/* �Est� el dispositivo abierto correctamente ahora? Usado para 
 * prevenir el acceso concurrente en el mismo dispositivo */
static int Device_Open = 0;

/* El mensaje que el dispositivo dar� cuando preguntemos */
static char Message[BUF_LEN];

/* �Cu�nto m�s tiene que coger el proceso durante la lectura?
 * �til si el mensaje es m�s grande que el tama�o
 * del buffer que cogemos para rellenar en device_read. */ 
static char *Message_Ptr;


/* Esta funci�n es llamada cuando un proceso
 * intenta abrir el fichero del dispositivo */
static int device_open(struct inode *inode, 
		       struct file *file)
{
  static int counter = 0;

#ifdef DEBUG
  printk ("Dispositivo abierto(%p,%p)\n", inode, file);
#endif

  /* Esto es como coger el n�mero menor del dispositivo
   * en el caso de que tengas m�s de un dispositivo f�sico
   * usando el controlador */
  printk("Dispositivo: %d.%d\n", 
	 inode->i_rdev >> 8, inode->i_rdev & 0xFF);

  /* No queremos que dos procesos hablen al mismo tiempo */
  if (Device_Open)
    return -EBUSY;

  /* Si hab�a un proceso, tendremos que tener m�s
   * cuidado aqu�.
   *
   * En el caso de procesos, el peligro es que un 
   * proceso quiz�s est� chequeando Device_Open y
   * entonces sea reemplazado por el planificador por otro
   * proceso que ejecuta esta funci�n. Cuando
   * el primer proceso regrese a la CPU, asumir� que el
   * dispositivo no est� abierto todav�a.
   *
   * De todas formas, Linux garantiza que un proceso no
   * ser� reemplazado mientras se est� ejecutando en el
   * contexto del n�cleo.
   *
   * En el caso de SMP, una CPU quiz�s incremente
   * Device_Open mientras otra CPU est� aqu�, correcto
   * despu�s de chequear. De todas formas, en la versi�n
   * 2.0 del n�cleo esto no es un problema por que hay un
   * cierre que garantiza que s�lamente una CPU estar� en
   * el m�dulo del n�cleo en un mismo instante. Esto es malo
   * en t�rminos de rendimiento, por lo tanto la versi�n 2.2
   * lo cambi�. Desgraciadamente, no tengo acceso a un 
   * equipo SMP para comprobar si funciona con SMP.
   */

  Device_Open++;

  /* Inicializa el mensaje. */
  sprintf(Message, 
    "Si te lo dije una vez, te lo digo %d veces - %s",
    counter++,
    "Hola, mundo\n");
  /* El �nico motivo por el que se nos permite hacer este
   * sprintf es porque la m�xima longitud del mensaje
   * (asumiendo enteros de 32 bits - hasta 10 d�gitos 
   * con el signo menos) es menor que BUF_LEN, el cual es 80.
   * ��TEN CUIDADO NO HAGAS DESBORDAMIENTO DE PILA EN LOS BUFFERS,
   * ESPECIALMENTE EN EL N�CLEO!!! */

  Message_Ptr = Message;

  /* Nos aseguramos de que el m�dulo no es borrado mientras
   * el fichero est� abierto incrementando el contador de uso
   * (el n�mero de referencias abiertas al m�dulo, si no es
   * cero rmmod fallar�) */
  MOD_INC_USE_COUNT;

  return SUCCESS;
}


/* Esta funci�n es llamada cuando un proceso cierra el
 * fichero del dispositivo. No tiene un valor de retorno en
 * la versi�n 2.0.x porque no puede fallar (SIEMPRE debes de ser
 * capaz de cerrar un dispositivo). En la versi�n 2.2.x
 * est� permitido que falle - pero no le dejaremos. */

#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,2,0)
static int device_release(struct inode *inode, 
			  struct file *file)
#else 
static void device_release(struct inode *inode, 
			   struct file *file)
#endif
{
#ifdef DEBUG
  printk ("dispositivo_liberado(%p,%p)\n", inode, file);
#endif
 
  /* Ahora estamos listos para la siguiente petici�n*/
  Device_Open --;

  /* Decrementamos el contador de uso, en otro caso una vez que
   * hayas abierto el fichero no volver�s a coger el m�dulo.
   */
  MOD_DEC_USE_COUNT;

#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,2,0)
  return 0;
#endif
}


/* Esta funci�n es llamada cuando un proceso que ya
 * ha abierto el fichero del dispositivo intenta leer de �l. */

#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,2,0)
static ssize_t device_read(struct file *file,
    char *buffer,    /* El buffer a rellenar con los datos */
    size_t length,   /* La longitud del buffer */
    loff_t *offset)  /* Nuestro desplazamiento en el fichero */
#else
static int device_read(struct inode *inode,
                       struct file *file,
    char *buffer,   /* El buffer para rellenar con 
		     * los datos */ 
    int length)     /* La longitud del buffer 
                     * (�no debemos escribir m�s all� de �l!) */
#endif
{
  /* N�mero de bytes actualmente escritos en el buffer */
  int bytes_read = 0;

  /* si estamos al final del mensaje, devolvemos 0 
   * (lo cual significa el final del fichero) */
  if (*Message_Ptr == 0)
    return 0;

  /* Ponemos los datos en el buffer */
  while (length && *Message_Ptr)  {

    /* Porque el buffer est� en el segmento de datos del usuario
     * y no en el segmento de datos del n�cleo, la asignaci�n
     * no funcionar�. En vez de eso, tenemos que usar put_user,
     * el cual copia datos desde el segmento de datos del n�cleo
     * al segmento de datos del usuario. */
    put_user(*(Message_Ptr++), buffer++);


    length --;
    bytes_read ++;
  }

#ifdef DEBUG
   printk ("%d bytes leidos, quedan %d\n",
     bytes_read, length);
#endif

   /* Las funciones de lectura se supone que devuelven el
    * n�mero de bytes realmente insertados en el buffer */
  return bytes_read;
}




/* Se llama a esta funci�n cuando alguien intenta escribir
 * en nuestro fichero de dispositivo - no soportado en este
 * ejemplo. */
#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,2,0)
static ssize_t device_write(struct file *file,
    const char *buffer,    /* El buffer */
    size_t length,   /* La longitud del buffer */
    loff_t *offset)  /* Nuestro desplazamiento en el fichero */
#else
static int device_write(struct inode *inode,
                        struct file *file,
                        const char *buffer,
                        int length)
#endif
{
  return -EINVAL;
}




/* Declaraciones del M�dulo ***************************** */

/* El n�mero mayor para el dispositivo. Esto es
 * global (bueno, est�tico, que en este contexto es global
 * dentro de este fichero) porque tiene que ser accesible
 * para el registro y para la liberaci�n. */
static int Major;

/* Esta estructura mantendr� las funciones que son llamadas
 * cuando un proceso hace algo al dispositivo que nosotros creamos.
 * Ya que un puntero a esta estructura se mantiene en
 * la tabla de dispositivos, no puede ser local a
 * init_module. NULL es para funciones no implementadas. */

struct file_operations Fops = {
  NULL,   /* b�squeda */
  device_read, 
  device_write,
  NULL,   /* readdir */
  NULL,   /* seleccionar */
  NULL,   /* ioctl */
  NULL,   /* mmap */
  device_open,
#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,2,0)
  NULL,   /* borrar */
#endif
  device_release  /* a.k.a. cerrar */
};


/* Inicializa el m�dulo - Registra el dispositivo de car�cter */
int init_module()
{
  /* Registra el dispositivo de car�cter (por lo menos lo intenta) */
  Major = module_register_chrdev(0, 
                                 DEVICE_NAME,
                                 &Fops);

  /* Valores negativos significan un error */
  if (Major < 0) {
    printk ("dispositivo %s fall� con %d\n",
	    "Lo siento, registrando el car�cter",
	    Major);
    return Major;
  }

  printk ("%s El n�mero mayor del dispositivo es %d.\n",
          "El registro es un �xito.",
          Major);
  printk ("si quieres hablar con el controlador del dispositivo,\n");
  printk ("tendr�s que crear un fichero de dispositivo. \n");
  printk ("Te sugerimos que uses:\n");
  printk ("mknod <nombre> c %d <menor>\n", Major);
  printk ("Puedes probar diferentes n�meros menores %s",
          "y ver que pasa.\n");

  return 0;
}


/* Limpieza - liberamos el fichero correspondiente desde /proc */
void cleanup_module()
{
  int ret;

  /* liberamos el dispositivo */
  ret = module_unregister_chrdev(Major, DEVICE_NAME);
 
  /* Si hay un error, lo indicamos */ 
  if (ret < 0)
    printk("Error en unregister_chrdev: %d\n", ret);
}  

