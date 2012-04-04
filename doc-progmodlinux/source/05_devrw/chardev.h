/* chardev.h - el fichero de cabeceras con las definiciones ioctl.
 *
 * Aqu� las declaraciones tienen que estar en un fichero de cabeceras, 
 * porque necesitan ser conocidas por el m�dulo del n�cleo
 * (en chardev.c) o por el proceso llamando a ioctl (ioctl.c)
 */

#ifndef CHARDEV_H
#define CHARDEV_H

#include <linux/ioctl.h> 



/* El n�mero mayor del dispositivo. No podemos dejar nada m�s
 * en el registro din�mico, porque ioctl necesita conocerlo. */
#define MAJOR_NUM 100


/* Establece el mensaje del controlador del dispositivo */
#define IOCTL_SET_MSG _IOR(MAJOR_NUM, 0, char *)
/* _IOR significa que estamos creando un n�mero de comando ioctl
 * para pasar informaci�n desde un proceso de usuario al m�dulo
 * del n�cleo.
 *
 * El primer argumento, MAJOR_NUM, es el n�mero mayor de
 * dispositivo que estamos usando.
 *
 * El segundo argumento es el n�mero del comando
 * (puede haber varios con significado distintos).
 *
 * El tercer argumento es el tipo que queremos coger 
 * desde el proceso al n�cleo
 */

/* Coge el mensaje del controlador de dispositivo */
#define IOCTL_GET_MSG _IOR(MAJOR_NUM, 1, char *)
 /* Este IOCTL es usado para salida, para coger el mensaje
  * del controlador de dispositivo. De cualquier forma, a�n
  * necesitamos el buffer para colocar el mensaje en la entrada, 
  * tal como es asignado por el proceso.
  */


/* Coge el byte n'esimo del mensaje */
#define IOCTL_GET_NTH_BYTE _IOWR(MAJOR_NUM, 2, int)
 /* El IOCTL es usado para entrada y salida. Recibe
  * del usuario un n�mero, n, y retorna Message[n]. */


/* El nombre del fichero del dispositivo */
#define DEVICE_FILE_NAME "char_dev"


#endif





