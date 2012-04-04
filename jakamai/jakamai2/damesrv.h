/*
 * (c) 2001 Juan J. Amor <jjamor@hispalinux.es>
 * (c) 2002 Te�filo Ruiz <teo.ruiz@hispalinux.es>
 * (c) 2002 Javier Linares <jlinares@adala.org>
 *
 * Fecha: jue nov 28 15:51:16 CET 2002
 * Autores: Juan Jos� Amor, Te�filo Ruiz y Javier Linares
 * Descripci�n: Programa que balancea la carga del servidor de esTLDP
 * (antes LuCAS). 
 *
 * Nombre clave: Jakamai.
 * Programa disponible bajo licencia GNU GPL versi�n 2.0 o posterior.
 *
 **
 * $Id: damesrv.h,v 1.1 2002/12/16 09:30:31 teo Exp $
 **
 */

/* ****************** FUNCIONES **************************
 *
 * Las funciones aparecen en este archivo en el mismo orden que aparecen en
 * el archivo .c.
 */


/* Funci�n que sirve la petici�n. */
void main_loop();

/* �nica funci�n a la que hay que llamar para que re-lea la configuraci�n
 * del programa. Puede ser utilizada la primera vez o de forma as�ncrona
 * por se�ales.
 */
void cargaConfiguracion();

void errorLog(int idError);
void imprimeURL(FILE *lugar);

