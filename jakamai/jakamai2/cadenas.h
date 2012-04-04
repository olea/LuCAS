/*
 * (c) 2001 juan j. amor <jjamor@hispalinux.es>
 * (c) 2002 te�filo ruiz <teo.ruiz@hispalinux.es>
 * (c) 2002 javier linares <jlinares@adala.org>
 *
 * fecha: jue nov 28 15:51:16 cet 2002
 * autores: juan jos� amor, te�filo ruiz y javier linares
 * descripci�n: programa que balancea la carga del servidor de estldp
 * (antes lucas). 
 *
 * nombre clave: jakamai.
 * programa disponible bajo licencia gnu gpl versi�n 2.0 o posterior.
 *
 **
 * $id: damesrv.c,v 2.0 2002/01/12 22:34:03 teo exp $
 **
 */

#define ERR_PRUEBA 1
#define ERR_APERTURA 2
#define ERR_RESERVA 3

#define FILELOG "damesrv.log"

/* Valida una URL. Devuelve 1 si la URL es v�lida y 0 en caso contrario */
int errorURL(char *linea);

/* Funciones de manejo de cadenas */
void eliminaEspacios(char *cadena);
void cortaPorCaracter(char *cadena, char c);



