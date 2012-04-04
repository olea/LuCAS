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
 * $Id: damesrv.c,v 1.1 2002/12/16 09:30:31 teo Exp $
 **
 */

/* System includes */
#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <string.h>
#include <ctype.h>
#include <sys/stat.h>
#include <unistd.h>

/* Own functions */
#include "damesrv.h"
#include "cadenas.h"
#include "constantes.h"

/* Variables globales */
char *mainserver 	= NULL;
char *localpath  	= NULL;
char servidores[MAXSERVERS][MAXURLLENGHT];
int idServidor		= 0;
char configuracion[] 	= FILECONF; 


int main() {

	/* Asignamos la se�al SIGHUP a la rutina de carga de configuraci�n
	 * desde el archivo definido por FILECONF.
	 */
	(void) signal(SIGHUP, cargaConfiguracion);

	cargaConfiguracion();
	main_loop();
	exit(0);
}

/* �nica funci�n a la que hay que llamar para que re-lea la configuraci�n
 * del programa. Puede ser utilizada la primera vez o de forma as�ncrona
 * por se�ales.
 */
void cargaConfiguracion() {

	int error 		= 0;
	int variables		= 0;
	FILE *archivo		= NULL; 		
	char linea[TAMLINEA+1];			/* almacena la l�nea del fichero de configuracion */
	
	char *pIgualComillas	= NULL;		/* c�denas para b�squedas y filtrado de l�neas    */
	char *pMain		= NULL;
	char *pLocal		= NULL;
	char archivoLog[]	= FILELOG;

	char mainserver_temp[MAXURLLENGHT];
	char localpath_temp[MAXURLLENGHT];
	
	idServidor = 0;

	archivo = fopen(configuracion, "r");
	if(archivo == NULL) {
		errorLog(ERR_APERTURA);
		error=1;
	}
	else {
		while(!feof(archivo) && !ferror(archivo)) {
			
			fgets(linea, TAMLINEA, archivo);

			/* Ponemos un terminador de cadena en el caso de
			 * que encuentre un caracter '\n' o un comentario
			 * que empiece por '#'.
			 */
			cortaPorCaracter(linea, '\n');
			cortaPorCaracter(linea, '#');

			/* Eliminamos los espacios del inicio */
			eliminaEspacios(linea);	

			error = errorURL(linea);

			if(error == 0) {

				/* ES una URL.
				 *
				 * Ponemos el terminador en cuanto que veamos un
				 * espacio en la URL y lo a�adimos a la estructura
				 * de URLs
				 */
				cortaPorCaracter(linea, ' ');

		//		fprintf(stdout, "Linea %d que copia: %s\n", idServidor, linea);
				strcpy(servidores[idServidor], linea);
		//		fprintf(stdout, "Linea copiada: %s\n", servidores[idServidor]);
				idServidor++;
			}
			else {
				/* NO es URL.
				 * Puede ser variable de datos.
				 */

				pIgualComillas	= strstr(linea, "=\"");
				pMain		= strstr(linea, "mainserver");
				pLocal		= strstr(linea, "localpath");

				if(pIgualComillas != NULL) {

					if(pMain != NULL) {
						strcpy(mainserver_temp, pIgualComillas+2);
						cortaPorCaracter(mainserver_temp, '"');
						variables++;
					}
					else if(pLocal != NULL) {
						strcpy(localpath_temp, pIgualComillas+2);
						cortaPorCaracter(localpath_temp, '"');
						variables++;
					}
				}

			} /* fin del "si es una URL" */

		} /* fin de "mientras se lean l�neas del archivo" */
		fclose(archivo);

		if(variables == NUMVARS) {

			error = 0;

			if(mainserver == NULL) {

				/* Si entramos aqu� es porque estamos en la
				 * primera iteraci�n del programa
				 */
				mainserver = (char *) malloc(MAXURLLENGHT*sizeof(char));
			}
			if(localpath == NULL) {
				/* Si entramos aqu� es porque estamos en la
				 * primera iteraci�n del programa
				 */
				localpath = (char *) malloc(MAXURLLENGHT*sizeof(char));
			}

			if(mainserver==NULL || localpath==NULL) {
				errorLog(ERR_RESERVA);
				error = 1;
			}
			else {
				strcpy(mainserver, mainserver_temp);
				strcpy(localpath, localpath_temp);

				/* TODO: Aqu� es donde deber�a habilitar
				 * las nuevas URLs que, hasta entonces, se
				 * deber�an haber estado copiando en un
				 * �rea temporal.
				 *
				 * Consultar archivo TODO para m�s
				 * informaci�n.
				 */
			}
		}
	}

	/* Cada vez que se ejecuta la reconfiguraci�n el programa vuelca en
	 * un archivo las URLs que se han a�adido.
	 */
	archivo = fopen(archivoLog, "a");
	if(archivo != NULL) {
		imprimeURL(archivo);
		fclose(archivo);
	}

}

void main_loop() {

  int counter = 0;
  int longitudLinea = 0;
  char buffer[MAXURLLENGHT];
  char returnedurl[MAXURLLENGHT+MAXSERVERLENGHT+1];

  char localfile[MAXURLLENGHT];

  struct stat ficheroStats;

 // Redirecciona toda salida a NULL
 setbuf(stdout,NULL);

  while (fgets(buffer,MAXURLLENGHT,stdin)) {

	// Elimina el �ltimo caracter si es EOF
	longitudLinea = strlen(buffer);
	if (buffer[longitudLinea-1] == '\n') {
		buffer[longitudLinea-1] = '\0';
	}

	sprintf(localfile,"%s/%s",localpath,buffer);
    
	// Returns a round-robin URL, if local file exists.
	// If not, returns a local URL to produce an ERROR 
	if(stat(localfile,&ficheroStats) < 0 ) {
		sprintf(returnedurl,"%s/%s\n",mainserver,buffer);
	}
	else {
	 	//	counter = ((counter+1) % MAXSERVERS);
		counter = ((counter+1) % idServidor);
		sprintf(returnedurl,"%s/%s\n",servidores[counter],buffer);
	}

    	fputs(returnedurl,stdout);
  }
}

void errorLog(int idError) {

	FILE *log = NULL;

	log = fopen(FILELOG, "a");
	if(log != NULL) {
		
		fprintf(log, "Error: ");
		switch(idError) {

			case ERR_PRUEBA:
				fprintf(log, "Error en prueba.\n");
				break;

			case ERR_APERTURA:
				fprintf(log, "No es posible abrir fichero de configuracion.\n");
				break;

			case ERR_GENERICO:
				fprintf(log, "Fallo en ejecuci�n.\n");
				break;

			default:
				break;
		}

		fclose(log);
	}
}

/* Imprime la lista de URLs v�lidas que est�n cargadas. 
 */
void imprimeURL(FILE *lugar) {

	int i 		= 0;

	fprintf(lugar, "-------------------------------------------\n");
	fprintf(lugar, "Mainserver: %s\n", mainserver);
	fprintf(lugar, "Localpath: %s\n", localpath);
	fprintf(lugar, "Servidores: %d\n", idServidor);

	/* TODO: Hacer que el programa a�ada en este informe de URLs la
	 * fecha actual.
	 */ 

	for(i=0; i<idServidor; i++) {
		fprintf(lugar, "URL %d: %s\n", i, servidores[i]);
	}

}


