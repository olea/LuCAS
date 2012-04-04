%    Introducci�n al uso de GNU/Linux - Manual para el dictado de cursos 
%    Copyright (C) 2000 Lucas Di Pentima <ldipenti@ciudad.com.ar> 
%			Nicol�s C�sar <ncesar@ciudad.com.ar> 
% 
%    This program is free software; you can redistribute it and/or modify 
%    it under the terms of the GNU General Public License as published by 
%    the Free Software Foundation; either version 2 of the License, or 
%    (at your option) any later version. 
% 
%    This program is distributed in the hope that it will be useful, 
%    but WITHOUT ANY WARRANTY; without even the implied warranty of 
%    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the 
%    GNU General Public License for more details. 
% 
%    You should have received a copy of the GNU General Public License 
%    along with this program; if not, write to the Free Software 
%    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 
 
%%%%%%%%%%%%%%%%%%%%% 
% Secci�n: StarCalc % 
%%%%%%%%%%%%%%%%%%%%% 
 
 
\section{StarCalc: Hoja de C�lculo} 
 
% La verdad que no s� que meter ac� :-( 
 
%Carlos P�rez P�rez {\\tt cperezperez@terra.es} 
 
%*****************************************************
%                           Introducci�n             *
%*****************************************************

\subsection{Introducci�n} 
 
Una hoja de c�lculo\footnote{Tambi�n denominada Planilla de C�lculo}
es una herramienta puesta al alcance del usuario para solucionar una
cierta clase de problemas.  Estos problemas van desde llevar el
c�lculo de la contabilidad del hogar hasta el �nalisis de datos
estad�sticos pasando por un sinf�n de posibilidades.  El uso de una
hoja de c�lculo queda supeditada a lo que el usuario quiera, pero, hay
situaciones en las que se hace imprescindible el uso de una hoja de
c�lculo. Desde llevar la contabilidad de peque�as empresas, en las que
se requieran sumar grandes cantidades de cifras que la hoja de c�lculo
puede hacer autom�ticamente, utilizarlo para hacer regresiones
estad�sticas no excesivamente complejas, llevar el control de pedidos,
de ventas, de \ldots{} .Un largo etc�tera cuyo principal punto en
com�n es el de evitar c�lculos manuales tediosos que puedan inducir a
errores.  Definido el problema al que se puede enfrentar el usuario
ahora queda la elecci�n del programa de hoja de c�lculo. En el mercado
hay una gran cantidad de paquetes que incorporan hojas de
c�lculo. Aqu� se expondr� el uso de la StarCalc, la hoja de c�lculo
perteneciente al paquete ofim�tico StarOffice. Pero lo aqu� explicado
puede ser aplicado sin esfuerzo al uso de otras hojas de c�lculo, como
la Excel.  El lector debe tener en cuenta que aqu� no se explican
todas las opciones y caracter�sticas que incorpora StarCalc, s�lo se
trata de una introducci�n al uso de la misma as� como una serie de
pr�cticas en las que se tratar� de extender la parte te�rica.
 
%**********************************************************
%                    Primeros Pasos                       *
%**********************************************************

\subsection{Primeros Pasos} 
 
\paragraph{Entorno de trabajo.} 
 
El entorno de trabajo de la StarCalc se hace familiar para aquel
usuario que conozca el uso de las hojas de c�lculo. Es un entorno
totalmente gr�fico e intuitivo desde el principio. En el que podemos
observar una barra de men�s donde se encuentran las operaciones que se
pueden hacer con la StarCal. Debajo se hallan una serie de botones que
se usan para acceder m�s r�pida y c�modamente a funciones y acciones
que se encuentran en los men�s.

%<Gr�fico principal> 
\figura{La hoja de c�lculo StarCalc}{StarCalc} 

La zona de men�s, all� se posicionan el men� \comando{Archivo},
\comando{Editar}, \comando{Ver}, \comando{Insertar}, \comando{Formato}, 
\comando{Herramientas}, \comando{Datos}, \comando{Ventana} y \comando{Ayuda}.
Dentro decada una de ellas se agrupan las diferentes macros que la
StarCalc tiene predefinidas.

%<Gr�fico menu> 
%\figura{Los men�s de la StarCalc}{StarCalcMenus}

La siguiente zona est� conformada por una serie de botones que permiten el
acceso  r�pido a funciones definidas. Este �rea tambi�n se extiende a la parte
izquierda de  la pantalla. 
 
%<Gr�fico botones> 
\figura{Barra de botones superiores}{StarCalcBotones}
\figura{Barra de botones laterales}{StarCalcBotonesLaterales}

Luego se nos presenta la zona de trabajo, esto es, la parte destinada a la
introducci�n,  modificaci�n, c�lculo y presentaci�n de datos. 
 
%<Gr�fico trabajo> 
\figura{Zona de trabajo}{StarCalcTrabajo}

La �ltima zona est� conformada por una l�nea en la que se presentan una serie
de datos  sobre caracter�sticas generales de la hoja en la que estemos
trabajando.   

%<Gr�fico parte baja>
%\figura{L�nea inferior}{StarCalcLinea}

%*************************************************************
%                   Creaci�n de Nuevas Hojas                 *
%*************************************************************
 
\paragraph{Creaci�n de nuevas hojas} 
Para crear una nueva hoja se puede recurrir a varias formas de
hacerlo. Por un lado se puede hacer doble click en el icono de
\comando{Nueva Hoja de C�lculo} dentro del escritorio del entorno
StarOffice. Tambi�n se puede crear en el men�
\comando{Archivo}, submen� \comando{Nuevo}, y elegir \comando{Hoja de 
c�lculo}. Otra forma es utilizar las plantillas, para ello se puede
acceder al men� \boton{Archivo}, submen� \comando{Nuevo}, y
\comando{Plantillas}, o tambi�n presionar \boton{Ctrl+N}.

%Moverse por la hoja de C�lculo. 
\emph{Selecci�n de celda.} 
Las celdas dentro de la hoja se pueden seleccionar bien usando el
rat�n o con el teclado. Con el rat�n se presiona en la celda de inicio
y, sin soltar, se extiende la selecci�n moviendo el rat�n hasta llegar
a la celda final que se quiere seleccionar. Con el teclado, se
posiciona con las teclas de direcci�n sobre la celda a selccionar y se
presiona la teclas may�sculas.  Sin soltar dicha tecla se selccionan
las celdas deseadas con las teclas de direcci�n.

Para seleccionar celdas que no sean contiguas se utilizar� el rat�n y
la tecla control. Se selecciona el primer rango de celdas o una sola,
y a continuaci�n se seleccionan las celdas o rangos deseados sin
soltar la tecla control.  Para el caso en el que la selecci�n de
celdas quede fuera de las ventanas, hay que hacer notar que el
movimiento es autom�tico y no se necesita preocuparse hasta d�nde
llegar.  Las columnas y filas se pueden selccionar enteras si se
presiona sobre el r�tulo de fila o columna.
 
\paragraph{Abrir hoja desde archivo} 
%Las maneras de recuperar el trabajo (de otro o nuestro). 
Para recuperar un trabajo desde el lugar donde est� almacenado
acudiremos al men� \comando{Archivo} y \comando{Abrir} con lo que
aparecer� el cuadro de opciones para recuperar el archivo.

\figura{Recuperar archivo}{StarCalcAbrir}

Se puede acceder al cuadro de di�logo de abrir archivo presionando
\boton{Ctrl+O}.

%*****************************************************************
%                   Introducci�n de datos                        *
%*****************************************************************

\paragraph{Introducci�n de datos.} 
 
%Manera adecuada de poner los datos en las celdas :) 
 
Se aceptan dos grandes tipos: constantes y f�rmulas.  Las constantes
se dividen en: valores num�ricos, de texto y de fecha y hora.  Para
los valores num�ricos y de texto se aceptan: N�meros del 0 al 9 y
ciertos car�cteres especiales, tales como +-E e () . ,
\$ \% y /. Las restantes entradas se considerar�n de texto. Si se quiere 
utilizar un valor num�rico como texto se antepondr� el signo ' y luego
se introduce el valor.

Para introducir datos nos situaremos en la celda adecuada presionando
en ella y escribiremos aquello que queramos.
 
StarCalc puede ayudarnos a introducir datos, por ejemplo, en series de
n�meros podemos poner el primer n�mero y seleccionar la celda. En la
parte inferior derecha hay un punto negro, al seleecionarlo el puntero
del rat�n se convierte en una cruz, arrastr�ndolo hacia donde
queramosponer los datos se extender� la selecci�n y la StarCalc sumar�
autom�ticamentelos siguientes datos. En el caso de que los n�mero no
sean correlativos se pueden poner los dos primeros n�meros de la serie
y la StarCalc har� el resto.
 
Se puede hacer lo mismo con los nombres de los meses, si se introduce
enero, y siguiendo el procedimiento anterior se conseguir� que vaya
escribiendo todos los meses. La StarCalc muestra un r�tulo al lado
del puntero del rat�n, de esta manera sabremos hasta d�nde llegar sin
tener que hacer c�lculos mentales.

\paragraph{Protecci�n de datos.} Se pueden proteger libros enteros u hojas
individuales, de manera que se permita acceso de s�lo lectura o sin
acceso. A trav�s del men� \comando{Herramientas} y \comando{Proteger}.
Tambi�n se pueden proteger y desproteger celdas individuales.
 
%*************************************************************************
%                            Construcci�n de F�rmulas                    *
%*************************************************************************

\paragraph{Construcci�n de f�rmulas.}
 
Creaci�n de f�rmulas para la transformaci�n de los datos.
 
Se selecciona una celda vac�a y se introduce el signo igual precedido
de la expresi�n aritm�tica a utilizar. Por ejemplo, para sumar 3 y 6
pondremos:
\[=3+6\]
 
\emph{Precedencia de los operadores:}
\begin{itemize} 
\item Se procesan primero las expresiones entre par�ntesis. 
\item Se ejecutan la multiplicaci�n y la divisi�n antes de la suma y la resta. 
\item Los operadores del mismo nivel se calculan de izquierda a derecha. 
\end{itemize}

\emph{Los par�ntesis.} 
Hay que incluir un par�ntesis cerrado por cada uno que se abra.

\emph{Referencias a las celdas.}
Dentro de una f�rmula nos podemos referir a una celda de diferentes
maneras.  Escribiendo A1 haremos referencia a la celda de la fila 1
columna A, que tambi�n puede ser seleccionada con el rat�n.  En este
punto hay que diferenciar el tipo de referencia que se va a utilizar.

\emph{Referencias relativas.} 
Se refieren a las celdas por sus posiciones en relacci�n a la celda
que contiene la f�rmula. De esta manera la celda A1 se convertir� en
B2 si la f�rmula se mueve una fila hacia debajo y una columna hacia la
derecha.

\emph{Referencias absolutas.} 
Se identifica a la celda por su posici�n fija, la f�rmula har�
referencia siempre a la misma celda aunque se mueva la f�rmula. La
manera de hacer esto es utilizando el signo \$. Esto es, \$A\$1 hace
referencia a la fila 1 columna A en todo momento. A\$1 har� referncia
a la fila 1 simpre y a la columna se calcular� de forma relativa a la
f�rmula. El caso contrario ser�a \$A que mantendr�a fija la columna.
N�tese que se puede hacer referencia a cualquier celda dentro del
libro de trabajo.
 
%<Ver si se puede en otros libros>. 

\emph{Uso de funciones.}  Las funciones tal y como las hemos visto pude que
no tengan demasiado sentido si se trata, por ejemplo, de sumar una
gran cantidad de celdas:
\[=A1+A2+A3+A4+A5+A6+A7+A8+A9+A10+A11+A12\]
por eso se pueden utilizar las f�rmulas que provee la StarCalc
\[=SUMA(A1:A12)\]
 
Se puede utilizar cualquier funci�n definida dentro de la StarCalc
pas�ndole los par�metros adecuados. Sin embargo, no se pueden conocer
o retener todas las funciones que tiene la hoja, por eso se puede
utilizar insertar funci�n que presentar� un cuadro con las distintas
funciones existentes, una peque�a explicaci�n y los par�metros que se
necesitan.

%****************************************************************
%                        Formateo de la Hoja                    *
%****************************************************************

\paragraph{Formateo de la hoja.} 
%Utilizaci�n de los formatos de datos correctos y adecuados. 

%****************************************************************
%                     Impresi�n y Presentaci�n			*
%****************************************************************

\paragraph{Impresi�n y presentaci�n.}
%Imprimir documentos y presentaci�n en pantalla
%(eso de los colores y las l�neas).
El uso de la impresi�n dentro de la StarCalc sigue el mismo esquema que en el
resto de la suite StarOffice. Seleccionaremos el men� \comando{Archivo} e
\comando{Imprimir}, tambi�n podemos presionar las teclas \boton{Ctrl+P}. En
ambos casos se mostrar� un cuadro de di�logo. En el caso de que no necesitemos
ajustar las propiedades presionaremos \boton{Aceptar} y StarCalc mandar� el
trabajo a la cola de impresi�n.
 
%****************************************************************
%                        Salvando nuestro esfuerzo              *
%****************************************************************

\paragraph{Salvando nuestro esfuerzo.} 
%Formas de grabar en un archivo lo que hayamos hecho. 
Para guardar los datos con los que estamos trabajando acudiremos a
\comando{Archivo} y \comando{Guardar} o \comando{Guardar como} si
queremos guardarlo bajo otro nombre. En el caso de que el archivo
sea nuevo se nos presentar� el di�logo de guardar como para indicar
a la StarCalc bajo que nombre y tipo de archivo deseamos que sea
salvado nuestro trabajo.

%***************************************************************
%                     An�lisis de Datos                        *
%***************************************************************

\subsection{An�lisis de Datos} 
%An�lisis de datos. 
%3.1. Funciones Comunes. 
 
\paragraph{Funciones comunes.} 
%Las funciones que ofrece la StarCalc 
Sintaxis de las funciones: 
Las funciones presentas dos partes diferenciadas, por un lado, el nombre de la 
funci�n, por el otro, sus argumentos. Los argumentos de una funci�n deben estar 
entre par�ntesis inmediatamente despu�s del nombre de la fucni�n y su cantidad 
depender� del tipo de funci�n que se use. Tambi�n hay que destacar el hecho que 
dentro de los argumentos se pueden incluir tanto otras funciones, con sus propios 
argumentos, como valores num�ricos, valores de texto o valores l�gicos, as� como 
matrices y valores de error. 
La forma m�s sencilla de insertar funciones es us�ndo el autopiloto de funciones que 
se encuentra en el men� insertar, funci�n, presionando las teclas
\boton{Ctrl+F2} o us�ndo el  bot�n que se encuentra en las barras de botones,
d�nde se introducen las f�rmulas.  Aqu� no se van a exponer todas las
funciones que existen e la StarCalc, para ver  todas las funciones que la hoja
puede ofrecer puede consultar el Autopiloto de Funciones,  all� las encontrar�
agrupadas seg�n el uso que se les quiera dar.

\figura{Autopiloto de funciones.}{StarCalcFunciones}

\paragraph{Fechas y horas.} 
%Manipulaci�n de fechas para presentaci�n y utilizaci�n en c�lculos. 
Fechas y horas. 
Las fechas se introducen directamente en las celdas siguiendo alguno de los siguientes 
formatos que son perfectamente legibles por StarCalc: d/mm/aa; d-mmm-aa, d--mmm o mmm-aa. 
Paraconseguir 5 de Noviembre el a�o 2000, teclearemos \comando{5-nov-2000} y se
nos mostrar� tal cual  la hemos introducido. En aquellos formatos en los que se
omita alguna parte de la  fecha se tratar�n de distinta manera, as� si falta
el d�a se introduce autom�ticamente  el d�a primero, si es el a�o se introduce
el a�o en curso. N�tese que no puede faltar  el mes en los formatos
presentados.  Para introducir series de fechas utilizaremos lo aprendido en la
secci�n de introducci�n  de datos, esto es, podemos extender la selecci�n
autom�ticamente con el rat�n.  Para la introducci�n de horas se pueden seguir
los siguientes formatos: h:mm AM/PM; h:mm;ss AM/PM;  h:mm; h:mm:ss; mm:ss.0;
[h]:mm:ss.  El lector interesado puede mirar el Autopiloto de funciones donde
se encuentran algunas funciones  para utilizar y transformar fechas. 
 
\paragraph{An�lisis financiero.} 
%C�lculo de TAE, VAN, TIR, rentabilidades, intereses, etc. 
An�lisis financiero. 
En una hoja de c�lculo no pod�an faltar las funciones referidas a operaciones financieras, tales 
como el valor actual neto o la tasa interna de retorno. Estas funciones son muy utilizadas en 
entornos empresariales y para el usuario dom�stico que de esta forma puede calcular el rendimiento 
de sus ahorros o si la inversi�n en la compra de una casa es factible. 
en esta secci�n tambi�n se debe hacer referencia a las funciones de depreciaci�n, c�lculo de la 
tasa de retorno y an�lisis de valores burs�tiles. En este �ltimo caso, desarrollaremos un m�todo 
de an�lisis de acciones y opciones en la parte te�rica que no hace uso de las funciones que 
propone la StarCalc. 
 
\paragraph{An�lisis estad�stico.} 
%C�lculos de medias, modas, varianzas, regresiones, etc. 
An�lisis estad�stico. 
StarCalc utiliza funciones estad�sticas predefinidas con las que puede calcular multitud de aspectos 
sobre poblaciones. As� tenemos funciones como media, modas, medianas, rango, histogramas, frecuencias 
covarianzas, coeficiente de correalci�n, desviaci�n t�pica, distribuciones est�ndar, binomial, exponencial, 
normal, ji, poisson, regresiones lineales, entre otras. Cuya utilizaci�n ser� de utilidad 
para aquellas personas que requieran el uso de c�lculos estad�sticos. 
 
%*********************************************************************
%                              Gr�ficos                              *
%*********************************************************************

\subsection{Gr�ficos} 
%Creaci�n de gr�ficos para la mejor comprensi�n de los datos. 
%Gr�ficos. 
Como dice el refr�n, m�s vale una imagen que mil palabras. Por eso 
la StarCalc provee una serie de herramientas que permiten convertir los datos 
en gr�ficos para una mejor comprensi�n. 
 
Creaci�n de un nuevo gr�fico. 
Lo primero es seleccionar los datos que se desean representar para luego ir a 
\comando{Diagrama} en el men� \comando{Insertar}. 
Se nos mostrar� un cuadro pidiendo los datos, estos ser�n los que hemos seleccionado 
o cualquier rango que podemos ingresar manualmente.
En este punto podremos seleccionar si queremos nuestro gr�fico en la misma hoja o en 
una nueva hoja. Presionaremos \boton{Avanzar} y se nos mostrar� el cuadro de
di�logo para seleccionar  el tipo de gr�fico que vamos a utilizar.

\figura{Selecci�n del tipo de gr�fico}{StarCalcDiagramaSeleccion}
 
Una vez seleccionado el tipo de gr�fico y la variante que vayamos a utilizar, se nos presenta 
un cuadro en el que podremos introducir los t�tulos que van a acompa�ar el gr�fico. 

\figura{Titulos del gr�fico}{StarCalcDiagramaTitulos}

Tras lo cual seleccionaremos \boton{Crear} y se nos presentar� el gr�fico
dentro de la hoja activa,  o en una hoja nueva si es lo que hemos seleccionado
previamente.  Podremos trabajar directamente sobre el gr�fico utilizando el
bot�n derecho del rat�n o el men�  de formato que nos permitir� personalizar
el gr�fico. 

\emph{Personalizaci�n de gr�ficos.}
Presionando con el bot�n derecho elegiremos la opci�n del men�
\comando{Editar}. De esta manera  activaremos el gr�fico y podremos utilizar
las funciones de personalizaci�n sobre  aquellas zonas del gr�fico que
deseemos cambiar. Para ello seleccionaremos la parte  del gr�fico a cambiar y
seleccionaremos la opci�n \comando{Propiedades del Objeto} que se nos  muestra
con el bot�n derecho del rat�n o dentro del men� \comando{Formato}.  Ha de
hacerce notar que se pueden utilizar la hilera de botones verticales que se
encuentran  en la parte izquierda de la pantalla y que nos permiten acceder a
opciones del gr�fico  de forma m�s r�pida.

\figura{Personalizaci�n de gr�ficos}{StarCalcDiagramaGraficoCambioPropiedades}

%***********************************************************************
%              Gesti�n de bases de datos y listas                      *
%***********************************************************************

\subsection{Gesti�n de bases de datos y listas} 
%Utilizar la StarBase para usar con la StarCalc. Utilizaci�n de las 
%listas. 
La utilizaci�n de listas es muy com�n en las hojas de c�lculo (clientes, tel�fonos, etc.) 
Las lista deben cumplir una serie de caracter�sticas para que su utilizaci�n sea lo 
m�s efectiva posible.

\begin{itemize} 
\item Cada columna debe contener el mismo tipo de informaci�n. 
\item La primera fila deben ser r�tulos de descripci�n del contenido. 
\item No deber�a haber columnas o filas en blanco en la lista. 
\item Para el uso de filtros no deber�a haber otra informaci�n en las filas que ocupe la misma. 
\end{itemize} 

%Gesti�n de bases de datos y listas. 
%Utilizar la StarBase para usar con la StarCalc. Utilizaci�n de las 
%listas. 
 
La utilizaci�n de listas es muy com�n en las hojas de c�lculo (clientes, tel�fonos, etc.) 
Las lista deben cumplir una serie de caracter�sticas para que su utilizaci�n sea lo 
m�s efectiva posible. 
\begin{itemize} 
\item Cada columna debe contener el mismo tipo de informaci�n. 
\item La primera fila deben ser r�tulos de descripci�n del contenido. 
\item No deber�a haber columnas o filas en blanco en la lista. 
\item Para el uso de filtros no deber�a haber otra informaci�n en las filas
que ocupe la misma.
\end{itemize}

Para crear una lista a partir de los datos de una hoja vamos al \comando{Piloto
de Datos} en el  men� de \comando{Datos}.  Se nos mostr� el cuadro de
seleccionar fuente.

%<Gr�fico>

Presionando aceptar se nos mostrar�  el cuadro de Pilot de Datos
donde colocaremos por el m�todo arrastar y soltar los datos que  queramos que
se muestren. En el bot�n de \boton{Opciones} podremos acceder a una serie de
caracter�sticas  para afinar a�n m�s la lista.   
\emph{Ordenaci�n de listas.}
Para ordenar listas s�lo tenemos que seleccionar el �rea a ordenar y elegir
\comando{Ordenar} dentro del men�  de \comando{Datos} e indicar el m�todo de
ordenaci�n y la columna por la que se ordenar�, entre otras opciones  de
personalizaci�n. Se debe tener en cuenta que hemos de seleccionar la opci�n de
�rea contiene  encabezamientos de columna para que no ordene los encabezados
junto con los datos. Para esto  seleccionaremos la solapa de Opciones dentro
del cuadro \boton{Ordenar} y marcaremos la opci�n \boton{�rea} contiene 
encabezamientos de columna, a continuaci�n aceptaremos y se crear� la lista.   

\emph{Filtrado de listas.}
Con el uso de filtros dentro de las listas conseguiremos analizar aquellos datos que interesan. 
Por eso, al crear la lista se a�ade un bot�n denominado \boton{Filtro} que
permite definir los  datos que se van a mostrar dependiendo de aquellos datos
que se busquen.   
\emph{Bases de datos.}
StarCalc puede trabajar conjuntamente con bases de datos profesionales. Se pueden importar tablas 
desde bases de datos que StarOffice tenga registradas para trabajar directamente con listas. 
En la versi�n 5.2 de StarOffice se instala por defecto el soporte para Adabas siempre y cuando 
dicha base de datos se encuentre en el sistema. El uso de bases de datos tiene su tratamiento 
en la secci�n de StarBase. 
 
%*************************************************************************
%                            Tablas din�micas                            *
%*************************************************************************

\subsection{Tablas din�micas} 
%Creaci�n de tablas din�micas para que el c�lculo de datos 
%se autom�tico. 
Es un tipo especial de tabla que resume la informaci�n de ciertos campos de una lista o 
base de datos. 
Las tablas din�micas est�n vinculadas a los datos de los que proceden. Cuando dichos datos 
cambian, la tabla no se recalcula autom�ticamente, pero se puede actualizar en cualquier momento. 
 
%**************************************************************************
%                              Macros y StarBasic                         *
%**************************************************************************
\subsection{Macros y Starbasic} 
%Creaci�n de Macros y utilizaci�n del lenguaje de macros StarBasic. 
%Esto se har� de forma bastante esquem�tica. :-( 
 
%**************************************************************************
%                            PARTE DE PR�CTICAS                           *
%**************************************************************************

\subsection{De pr�cticas} 
En estas pr�cticas se pretenden ense�ar rudimentos de la utilizaci�n 
de hojas de c�lculo. As� como t�cnicas que no se ense�an en la parte 
te�rica. 
Se presentan de menor a mayor dificultad. Exceptuando las dos �ltimas 
que son casos aparte. 
 
\paragraph{Control de ingresos y gastos.} 
Objetivo. Llevar la contabilidad dom�stica. 
Don Rufino Pensante no sab�a por d�nde se le escapa el dinero que 
ganaba con su trabajo en una tienda de caramelos as� que decidi� 
montar un sistema de contabilidad dom�stica para llevar un orden y 
control de todo el dinero que pasaba por sus manos. 

\begin{tabular}{|l|r|r|r|r|r}
Mes & Enero & Febrero & Marzo & Abril & Mayo\\
Sueldo & 145.000 & 145.000 & 145.000 & 145.000 & 145.000\\
Vivienda & 30.000 & 31.000 & 30.000 & 29.000 & 32.000\\
Comida & 40.000 & 43.000 & 46.000 & 39.000 & 41.000\\
Coche & 15.000 & 6.000 & 16.000 & 8.000 & 9.000\\
Agua & 7.000 & 8.000 & 6.000 & 4.000 & 9.000\\
Luz & 11.000 & 10.000 & 12.000 & 9.000 & 10.500\\
Varios & 10.000 & 18.000 & 11.000 & 8.000 & 11.000\\
\end{tabular}

\paragraph{Productos de financiaci�n.} 
Objetivo. Calcular las mensualidades del pago de un pr�stamo o el  
rendimiento de los ahorros. 
 
\paragraph{An�lisis de proyectos de inversi�n.} 
Objetivo. Ayuda a la toma de decisiones en inversiones. 
 
\paragraph{Seguimiento de Acciones y opciones.} 
Objetivo. Ver la evoluci�n de los t�tulos de acciones y opciones que 
tengamos :-) . Modelo Black-Scholes. 
 
\paragraph{An�lisis de tendencia.} 
Objetivo. Calcular las previsiones para a�os futuros dada una serie de 
datos con un modelo sencillo. 

%*********************************************************************
%                                 El final                           *
%*********************************************************************

%\subsection{Bibliograf�a}
%De donde he sacado todo lo de arriba.
 
%\subsection{Agradecimientos}
%Lo que proceda. Aunque no s� si corresponde aqu�.
