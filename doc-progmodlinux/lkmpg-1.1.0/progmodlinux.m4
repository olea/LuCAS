% Gu�a de Programaci�n del M�dulos del N�cleo Linux -*- LaTeX -*-
% Copyright (C) 1998-1999 por Ori Pomerantz
%
% Este fichero es libremente distribuible, pero debes mantener este copyright
% en todas las copias, y debe ser distribuido solamente como parte de
% la "Gu�a de Programaci�n de M�dulos del N�cleo Linux". El uso de
% este fichero est� cubierto por el Copyright del documento entero, en 
% el fichero "copyright.tex".
%

% m4 Macros para un fichero fuente (uso m4 para poder incluir un fichero con el modo verbatim)

define(`sourcesample', `
\vskip 2ex
\addcontentsline{toc}{section}{$1}
{\large\bf $1}
\index{$1, source file}\index{source}\index{source!$1}

\begin{verbatim}
include(../source/$2/$1)
\end{verbatim}
')

% El estilo del documento
% Versiones viejas
%\documentstyle[times,indentfirst,epsfig,twoside,linuxdoc,lotex]{report}
%\documentclass[times,indentfirst,epsfig,a4paper,linuxdoc,twoside,lotex]{book}
\documentclass[a4paper,spanish]{report}
\usepackage{times,indentfirst,epsfig,linuxdoc,lotex}
% Cabeceras en Espa�ol
\usepackage[latin1]{inputenc}
\usepackage{babel}
% Queremos un �ndice.
\makeindex

% Definiciones Espec�ficas del Documento
\newcommand{\myversion}[0]{1.1.0}
\newcommand{\myyear}[0]{1999}
\newcommand{\mydate}[0]{26 Abril \myyear}
\newcommand{\bookname}[0]{Gu�a de Programaci�n de M�dulos del N�cleo Linux}

%  Definiciones Espec�ficas del Autor

\newcommand{\mycorreoe}{mpg@simple-tech.com}
\newcommand{\myname}{Ori Pomerantz}
\newcommand{\myaddress}{\myname\\
                        Apt. \#1032\\
                        2355 N Hwy 360\\
                        Grand Prairie\\
                        TX 75050\\
                        USA}

\typeout{ * \bookname, \mycorreoe }
\typeout{ * Versi�n \myversion, \mydate.}


% Banderas Condicionales. Establ�celas bas�ndote en c�mo est�s formateando el libro.
% Para la edici�n Slackware:
\def\igsslack{1}
% Para la edici�n ASCII plana:
%\def\igsascii{0}

% Hack de jr, porque latex2html no sabe leer doclinux.sty
\makeatletter
\renewcommand{\lbr}{$\langle$}                  % Signo menor que '<'
\renewcommand{\rbr}{$\rangle$}                  % Signo mayor que '>'
\renewcommand{\tldpes}{{\tt http://www.es.tldp.org}}
\makeatother



% Establece la infomaci�n del t�tulo.
\title{\bookname}
\years{\myyear}
\author{\large \myname}
\abstract{Versi�n \myversion, \mydate. \\
\vskip 1ex
Este libro trata sobre c�mo escribir M�dulos del N�cleo Linux. Se espera que sea de utilidad
para programadores que saben C y quieren aprender a
escribir m�dulos del n�cleo. Est� escrito a la manera de un manual de
instrucciones ``C�mo'' (How-To), con ejemplos de todas las t�cnicas
importantes.
\\
\vskip 1ex
Aunque este libro toca muchos puntos del dise�o del n�cleo, no se
supone que venga a cumplir dicho prop�sito; hay otros libros sobre
el tema, tanto impresos como en el proyecto de documentaci�n de Linux.
\\
\vskip 1ex
Usted puede copiar y redistribuir libremente este libro bajo
ciertas condiciones. Por favor, lea los enunciados del copyright y de la
distribuci�n.
}


% esto es 'especial' para dvips
%\special{papersize=7in,9in}
%\setlength\paperwidth  {7in}
%\setlength\paperheight {9in}

% Tabla de contenidos
\setcounter{secnumdepth}{5}
\setcounter{tocdepth}{2}

% Inicialmente, n�meraci�n romana sin n�meros.
\pagenumbering{roman}
\pagestyle{empty}  
\sloppy

%%
%% fin del pre�mbulo
%%


\begin{document}
\raggedbottom{}
\setlength{\parskip}{0pt}      %quita los espacios entre p�rrafos

\maketitle

include(copyright.m4)
include(copyright-es.m4)

\setcounter{page}{0}
\pagestyle{headings}
\tableofcontents

% Me gusta que mis introducciones empiecen en el cap�tulo 0.
\setcounter{chapter}{-1}

% �No m�s numeraci�n Romana!
\setcounter{page}{0}
\pagenumbering{arabic}
% Por fin, el principio REAL
\chapter{Introducci�n}\label{introduction}

As� que quieres escribir un m�dulo del n�cleo. Sabes C, has
escrito algunos programas corrientes que se ejecutan  como procesos, y
ahora quieres ir donde est� la verdadera acci�n, donde un simple
puntero salvaje puede destruir tu sistema de ficheros y  donde un volcado
de memoria (core dump) significa un reinicio de la m�quina.

Bueno, pues bienvenido al club. A m�, en una ocasi�n un puntero salvaje me hizo un estropicio en
un directorio importante bajo DOS (gracias que ahora significa {\bf
D}ead {\bf O}perating {\bf S}ystem; Sistema Operativo Muerto), y no veo por qu� vivir bajo
Linux deber�a ser algo m�s seguro que esto\index{DOS}.


{\bf Advertencia:} He escrito esto y verificado el programa bajo versiones
2.0.35 y 2.2.3 del n�cleo funcionando en un Pentium. Para la mayor
parte, deber�a funcionar en otras CPUs y en otras versiones del
n�cleo siempre que sean 2.0.x o 2.2.x, pero no puedo 
prometer nada. Una excepci�n es el cap�tulo~\ref{int-handler}, que
no deber�a funcionar en ninguna arquitectura excepto x86.



\section{Qui�n deber�a leer esto}\label{who-should-read}

Este documento es para personas que quieran escribir m�dulos del
n�cleo. Aunque tratar� en varios sitios sobre c�mo se hacen las cosas
en el n�cleo, �ste no es mi prop�sito. Hay fuentes bastante buenas
que hacen un trabajo mejor que el que yo pudiera haber
hecho.

Este documento tambi�n es para personas que saben escribir
m�dulos del n�cleo pero que no se han adaptado a la versi�n 2.2 de
�ste. Si eres una de estas personas, te sugiero que mires en el
ap�ndice~\ref{ver-changes} todas las diferencias que he
encontrado mientras actualizaba los ejemplos. La lista est� lejos de
ser amplia, pero creo que cubre la mayor�a de las funcionalidades
b�sicas y te bastar� para empezar.

El n�cleo es un magn�fico trabajo de programaci�n, y creo que todo
programador deber�a leer al menos algunos ficheros fuente del
n�cleo y entenderlos. Dicho esto, tambi�n creo en el valor de jugar
primero con el sistema y hacer las preguntas despu�s. Cuando aprendo un
nuevo lenguaje de programaci�n, no empiezo leyendo el c�digo de la
biblioteca, sino escribiendo un peque�o programa ``hola, mundo''. No
veo por qu� el jugar con el n�cleo tendr�a que ser diferente.


\section{Un apunte sobre el estilo}\label{style-note}

Me gusta poner tantas bromas como sea posible en la documentaci�n.
Estoy escribiendo esto porque me gusta, y asumo que la mayor�a de vosotros
est�is leyendo esto por el mismo motivo. Si quieres saltarte este punto, %fuzzy. FVD
ignora todo el texto normal y lee el c�digo fuente. Prometo poner todos
los detalles importantes en destacado.


\section{Cambios}\label{changes}

\subsection{Nuevo en la versi�n 1.0.1}

\begin{enumerate}
\item{\bf Secci�n de cambios}, \ref{changes}.
\item{\bf C�mo encontrar el n�mero menor del dispositivo}, \ref{char-dev-file}.
\item{\bf Arreglada la explicaci�n de la diferencia entre
        caracteres y ficheros de dispositivo}, \ref{char-dev-file}
\item{\bf Makefiles para los m�dulos del n�cleo}, \ref{makefile}.
\item{\bf Multiproceso sim�trico}, \ref{smp}.
\item{\bf Un Cap�tulo de ``Malas Ideas'' }, \ref{bad-ideas}.
\end{enumerate}


\subsection{Nuevo en la versi�n 1.1.0}

\begin{enumerate}
\item{\bf Soporte para la versi�n 2.2 del n�cleo}, todo sobre el sitio.
\item{\bf Ficheros fuente para varias versiones del n�cleo}, \ref{kernel-ver}.
\item{\bf Cambios entre 2.0 y 2.2}, \ref{ver-changes}.
\item{\bf M�dulos del n�cleo en varios ficheros fuente}, \ref{multi-file}.
\item{\bf Sugerencia de no dejar m�dulos que implementan 
        llamadas al sistema que pueden ser quitadas}, \ref{sys-call}.
\end{enumerate}


\section{Agradecimientos}\label{acknowledgments}

Quisiera agradecer a Yoav Weiss por tantas discusiones e ideas 
�tiles, as� como por encontrar fallos en este documento antes de su
publicaci�n. Por supuesto, cualquier error remanente es s�lo 
culpa m�a.

El esqueleto \TeX{} para este libro fue descaradamente robado de la gu�a
``Linux Installation and Getting Started'', donde el trabajo de \TeX{} fue
realizado por Matt Welsh.

Mi gratitud a Linus Torvalds, Richard Stallman y al resto de las personas que
me dieron la posibilidad de ejecutar un sistema operativo de  calidad en mi
ordenador y obtener el c�digo fuente sin decirlo (vale, de acuerdo:          %fuzzy.FVD
entonces �por qu� lo dije?).

\subsection{Para la versi�n 1.0.1}

No he podido relacionar aqu� a todo el mundo que me escribi� un correo-e, y si te he
dejado fuera lo siento por adelantado. Las siguientes personas fueron
especialmente �tiles:

\begin{itemize}

\item{\bf Frodo Looijaard, de Holanda} Por un mont�n de sugerencias
        �tiles, y sobre informaci�n sobre los n�cleos 2.1.x.
\item{\bf Stephen Judd, de Nueva Zelanda} Correcciones tipogr�ficas.
\item{\bf Magnus Ahltorp, de Suiza} Corrigiendo un fallo m�o
	 sobre la diferencia entre dispositivos de bloque y de car�cter.

\end{itemize}


\subsection{Para la versi�n 1.1.0}

\begin{itemize}

\item{\bf Emmanuel Papirakis, de Qu�bec, Canad�} Por portar todos los
        ejemplos a la versi�n 2.2 del n�cleo.
\item{\bf Frodo Looijaard, de Holanda} Por decirme c�mo crear un m�dulo
        del n�cleo con varios ficheros (\ref{multi-file}).


\end{itemize}

Por supuesto, cualesquiera errores remanentes son m�os, y si piensas que
�stos hacen el libro inutilizable eres bienvenido a apuntarte a recibir
un reintegro total del dinero que me has pagado por �l.


\chapter{Hola, mundo}\label{hello-world}

Cuando el primer programador de las cavernas cincel� el primer programa en las
paredes de la primera computadora de las cavernas, era un programa para
imprimir la cadena de caracteres ``Hola, mundo'' en las pinturas de los
Ant�lopes. Los libros de texto de los romanos sobre programaci�n empezaban con el programa
``Salut, Mundi''. No s� qu� puede ocurrirle al que rompa esta tradici�n, 
y creo que es m�s seguro no averiguarlo\index{hola mundo}\index{salut mundi}.

Un m�dulo del n�cleo tiene que tener por lo menos dos funciones: {\tt init\_module}
que se llama cuando el m�dulo se inserta en el n�cleo, y {\tt cleanup\_module}
que se llama justo antes de ser quitado.
T�picamente, {\tt init\_module} o bien registra un manejador para algo que tiene que ver con el n�cleo, o 
reemplaza una de las funciones del n�cleo con su propio c�digo (normalmente c�digo para
hacer algo y luego llamar a la funci�n original). La funci�n {\tt cleanup\_module} 
se supone que deshace lo que {\tt init\_module} ha hecho, de forma que el m�dulo pueda
ser descargado de una forma segura\index{init\_module}\index{cleanup\_module}.


sourcesample(hello.c, 01_hello)

\section{Makefiles para los m�dulos del n�cleo}\label{makefile}\index{makefile}

Un m�dulo del n�cleo no es un ejecutable independiente, sino un fichero objeto 
que ser� enlazado dentro del n�cleo en tiempo de ejecuci�n. En consecuencia,
deber�an ser compilados con la bandera {\tt -c}. Tambi�n, todos los m�dulos del
n�cleo deber�an ser compilados con ciertos s�mbolos 
definidos\index{compilando}.

\begin{itemize}

\item{\tt \_\_KERNEL\_\_} : Esto le dice a los ficheros de cabeceras que este c�digo
        se ejecutar� en modo kernel (n�cleo), y no como parte de un proceso de usuario (modo
        usuario\index{\_\_KERNEL\_\_}).

\item{\tt MODULE} : Esto le dice a los ficheros de cabeceras que le den las definiciones
        apropiadas para un m�dulo del n�cleo\index{MODULE}.

\item{\tt LINUX} : T�cnicamente hablando, esto no es necesario. Sin embargo, 
        si quisieras escribir un m�dulo serio que se compile
        en m�s de un sistema operativo, ser�s feliz si lo haces. Esto te
        permitir� hacer compilaci�n condicional en las partes que son
        dependientes del S. O.\index{LINUX}.
\end{itemize}


Hay otros s�mbolos que tienen que ser incluidos, o no, dependiendo de las
banderas con las que se haya compilado el n�cleo. Si no est�s seguro de c�mo
fue compilado el n�cleo, mira en 
{\tt /usr/include/linux/config.h}\index{config.h}%
\index{configuraci�n del n�cleo}\index{configuraci�n}%
\index{configuraci�n!n�cleo}


\begin{itemize}

\item{\tt \_\_SMP\_\_} : Multiproceso sim�trico. Esto tiene que estar definido si
        el n�cleo fue compilado para soportar multiproceso sim�trico (incluso
        si s�lo se est� ejecutando en una CPU). Si usas Multiproceso sim�trico,
        hay otras cosas que tienes que hacer (ver cap�tulo~\ref{smp}%
\index{\_\_SMP\_\_}).

\item{\tt CONFIG\_MODVERSIONS} : Si CONFIG\_MODVERSIONS estaba habilitado,
        necesitas tenerlo definido cuando compiles el m�dulo del n�cleo e 
        incluir {\tt /usr/include/linux/modversions.h}. Esto tambi�n puede
        ser realizado por el propio c�digo\index{CONFIG\_MODVERSIONS}%
\index{modversions.h}.

\end{itemize}


sourcesample(Makefile, 01_hello)

As� que ahora s�lo falta hacer {\tt su} a root (no compilaste
como root, �a que no? Viviendo en el l�mite\footnote{El motivo por el que prefiero no
compilar como root es que cuanto menos cosas se hagan como root m�s seguro estar� el 
equipo. Trabajo en seguridad inform�tica, as� que soy un paranoico}\ldots), y
entonces haz {\tt insmod hello} y {\tt rmmod hello} para la satisfacci�n de tu alma. Mientras
lo haces, observa la presencia de tu nuevo m�dulo del n�cleo en 
{\tt /proc/modules}\index{insmod}\index{rmmod}\index{/proc/modules}%
\index{root}.

Por cierto: el motivo por el que Makefile recomienda no hacer {\tt insmod}
desde X es porque cuando el n�cleo tiene que imprimir un mensaje con {\tt printk},
lo env�a a la consola. Cuando no utilizas X, va al terminal virtual que est�s
usando (el que escogiste con Alt-F$<$n$>$) y lo ves. Si utilizas X, en cambio, hay
dos posibilidades:  que tengas una consola abierta con {\tt xterm -C}, en cuyo caso la salida
ser� enviada all�, o que no, en cuyo caso la salida ir� al terminal virtual 7 (el que est�
``cubierto'' por X)\index{X}\index{X!porqu� las deber�as evitar}%
\index{xterm -C}\index{consola}\index{terminal virtual}%
\index{virtual}\index{virtual!terminal}\index{printk}.

Si tu n�cleo se vuelve inestable ser� m�s probable que cojas los
mensajes de depuraci�n sin las X. Fuera de X, {\tt printk} va
directamente desde el n�cleo a la consola. En X, en cambio, 
los {\tt printk}s van a un proceso de modo usuario ({\tt xterm -C}).
Cuando este proceso recibe tiempo de CPU, se supone que lo env�a al proceso
servidor de X. Entonces, cuando el servidor X recibe la CPU, se supone que
lo muestra; pero un n�cleo inestable normalmente significa que el sistema
se va a estrellar o a reiniciar, por lo tanto no quieres que se retrasen los 
mensajes de error, los que podr�an explicarte qu� es lo que fue mal,
durante mucho m�s tiempo del que necesitas. 



\section{M�dulos del n�cleo de varios ficheros}\label{multi-file}%
\index{varios ficheros fuente}%
\index{ficheros fuente}\index{ficheros fuente!varios}

A veces tiene sentido dividir el m�dulo del n�cleo en varios
ficheros de c�digo. En este caso, tienes que hacer lo siguiente:

\begin{enumerate}

\item{En todos lo ficheros fuente menos en uno, a�ade la l�nea
        {\tt \#define \_\_NO\_VERSION\_\_}. Esto es importante porque
        {\tt module.h} normalmente incluye la definici�n de
        {\tt kernel\_version}, una variable global con la
        versi�n del n�cleo para la que se compila el m�dulo. Si 
        necesitas {\tt version.h}, tienes que incluirla, porque
        {\tt module.h} no lo har� por ti con {\tt \_\_NO\_VERSION\_\_}%
\index{\_\_NO\_VERSION\_\_}\index{module.h}\index{version.h}%
\index{kernel\_version}.}

\item{Compila todos los ficheros fuente de la forma normal.}

\item{Combina todos los ficheros objeto en uno solo. Bajo x86, hazlo con
        {\tt ld -m elf\_i386 -r -o $<$nombre del m�dulo$>$.o 
        $<$primer fichero fuente$>$.o $<$segundo fichero fuente$>$.o}\index{ld}%
\index{elf\_i386}.}

\end{enumerate}

He aqu� un ejemplo de m�dulo de este tipo.

sourcesample(start.c, 01_hello/multifile)
sourcesample(stop.c, 01_hello/multifile)
sourcesample(Makefile, 01_hello/multifile)


\chapter{Ficheros de dispositivos de car�cter}\label{char-dev-file}%
\index{ficheros de dispositivos de car�cter}%
\index{car�cter}\index{car�cter!ficheros de dispositivos}

As� que ahora somos unos valientes programadores del n�cleo y sabemos 
escribir m�dulos que no hacen nada. Estamos orgullosos
de nosotros mismos y llevamos la cabeza bien alta. Pero
de alg�n modo sentimos que falta algo. Los m�dulos catat�nicos no son muy
divertidos. 

Hay dos formas principales de que un m�dulo del n�cleo se comunique con
los procesos. Una es a trav�s de los ficheros de dispositivos (como los
que est�n en el directorio {\tt /dev}) y la otra es usar el sistema de ficheros 
proc. Ya que uno de los principales motivos para escribir algo en el n�cleo
es soportar alg�n tipo de dispositivo de hardware, empezaremos con los
ficheros de dispositivos\index{/dev}.

El prop�sito original de los ficheros de dispositivo es permitir a los
procesos comunicarse con los controladores de dispositivos en el n�cleo, 
y a trav�s de ellos con los dispositivos f�sicos (m�dems, terminales, etc.).
La forma en la que esto se implementa  es la 
siguiente\index{f�sicos}%
\index{f�sicos!dispositivos}\index{dispositivos f�sicos}%
\index{modem}\index{terminal}.

A cada controlador de dispositivo, que es responsable de alg�n tipo
de hardware, se le asigna su propio n�mero mayor. La lista de los controladores 
y de sus n�meros mayores est� disponible en {\tt /proc/devices}. A cada dispositivo
f�sico administrado por un controlador de dispositivo se le asigna un n�mero menor. 
El directorio {\tt /dev} se supone que incluye un fichero especial, llamado
fichero de dispositivo, para cada uno de estos dispositivos, tanto si est�  
realmente instalado en el sistema como si no\index{mayor}\index{mayor!n�mero}%
\index{n�mero}\index{n�mero!mayor (del controlador de dispositivo)}%
\index{menor}\index{menor!n�mero}%
\index{n�mero}\index{n�mero!mayor (del dispositivo f�sico)}.

Por ejemplo, si haces {\tt ls -l /dev/hd[ab]*}, ver�s todas las particiones
de discos duros IDE que posiblemente est�n conectadas a una m�quina. Date cuenta de que
todos ellos usan el mismo n�mero mayor, 3, pero el n�mero menor cambia de uno
a otro {\em Nota: Esto es as� suponiendo que est�s usando una arquitectura PC. No s�
nada sobre dispositivos en Linux ejecut�ndose en otras arquitecturas}.%
\index{IDE}\index{IDE!discos duros}%
\index{partici�n}\index{partici�n!de un disco duro}%
\index{disco duro}\index{disco duro!particiones de}

Cuando el sistema se instal�, todos esos ficheros de dispositivos se
crearon mediante la orden {\tt mknod}. No existe un motivo t�cnico por el que
tienen que estar en el directorio {\tt /dev}, es s�lo una convenci�n �til.
Cuando creamos un fichero de dispositivo con el prop�sito de prueba, como aqu� %fuzzy.FVD
para un ejercicio, probablemente tenga m�s sentido colocarlo en el directorio
en donde compilas el m�dulo del n�cleo\index{mknod}\index{/dev}.

Los dispositivos est�n divididos en dos tipos: los dispositivos de car�cter
y los dispositivos de bloque. La diferencia es que los dispositivos de
bloque tienen un b�fer para las peticiones, por lo tanto
pueden escoger en qu� orden las van a responder. Esto es importante
en el caso de los dispositivos de almacenamiento, donde es m�s r�pido leer
o escribir sectores que est�n cerca entre s�, que aquellos
que est�n m�s desperdigados. Otra diferencia es que los dispositivos de
bloque s�lo pueden aceptar bloques de entrada y de salida (cuyo tama�o
puede variar seg�n el dispositivo), en cambio los dispositivos
de car�cter pueden usar muchos o unos pocos bytes como ellos quieran. %fuzzy. FVD
La mayor�a de los dispositivos del mundo son de car�cter, porque
no necesitan este tipo de \emph{buffering}, y no operan con un tama�o de
bloque fijo. Se puede saber cu�ndo un fichero de dispositivo es para un
dispositivo de car�cter o de bloque mirando el primer car�cter de
la salida de {\tt ls -l}. Si es ``b''  entonces es un dispositivo de bloque,
y si es ``c'' es un dispositivo de car�cter.%
\index{ficheros de dispositivo}%
\index{ficheros de dispositivo!car�cter}%
\index{ficheros de dispositivo!bloque}%
\index{acceso secuencial}%
\index{secuencial}\index{secuencial!acceso}

Este m�dulo est� dividido en dos partes separadas: la parte del m�dulo
que registra el dispositivo y la parte del controlador del dispositivo. La
funci�n {\tt init\_module} llama a {\tt module\_register\_chrdev} para
a�adir el controlador de dispositivo a la tabla de controladores de 
dispositivos de car�cter del n�cleo. Tambi�n devuelve el n�mero mayor
que usar� el controlador. La funci�n {\tt cleanup\_module}
libera el dispositivo\index{module\_register\_chrdev}%
\index{n�mero mayor del dispositivo}%
\index{n�mero del dispositivo}\index{n�mero del dispositivo!mayor}.

Esto (registrar y liberar algo) es la funcionalidad general
de estas dos funciones. Las cosas en el n�cleo no funcionan por %fuzzy.FVD
su propia iniciativa, como los procesos, sino que son llamados por
procesos a trav�s de las llamadas al sistema, o por los dispositivos
hardware a trav�s de las interrupciones, o por otras partes
del n�cleo (simplemente llamando a funciones espec�ficas). Como 
resultado, cuando a�ades c�digo al n�cleo, se supone que es
para registrarlo como parte de un manejador o para un cierto tipo
de evento y cuando lo quitas, se supone que lo liberas.%
\index{init\_module}\index{init\_module!prop�sito general}%
\index{cleanup\_module}\index{cleanup\_module!prop�sito general}.

El controlador del dispositivo se compone de cuatro funciones
device\_$<$acci�n$>$, que se llaman cuando alguien intenta
hacer algo con un fichero de dispositivo con nuestro n�mero mayor. La
forma en que el n�cleo sabe c�mo llamarlas es a trav�s de la estructura
{\tt file\_operations}, {\tt Fops}, que se dio cuando el
dispositivo fue registrado, e incluye punteros a esas
cuatro funciones\index{file\_operations structure}%
\index{struct file\_operations}.

Otro punto que hemos de recordar aqu� es que podemos permitir que 
el m�dulo del n�cleo sea borrado cuando \emph{root quiera}. El motivo es que %fuzzy.FVD
si el fichero del dispositivo es abierto por un proceso y entonces quitamos
el m�dulo del n�cleo, el uso del fichero causar�a una llamada a la posici�n
de memoria donde la funci�n apropiada (read/write) usada deber�a estar. 
Si tenemos suerte, ning�n otro c�digo fue cargado all�, y obtendremos
un feo mensaje. Si no tenemos suerte, otro m�dulo del n�cleo fue cargado 
en la misma posici�n, lo que significar� un salto en mitad de
otra funci�n del n�cleo. El resultado ser�a imposible de predecir, pero
no ser�a positivo\index{rmmod!previniendo}.

Normalmente, cuando no quieres permitir algo, devuelves un c�digo 
de error (un n�mero negativo) desde la funci�n que se supone que
lo tendr�a que hacer. Con  {\tt cleanup\_module} esto es imposible porque
es una funci�n void. Una vez que se llama a {\tt cleanup\_module}, el m�dulo
est� muerto. En todo caso, hay un contador que cuenta cu�ntos otros m�dulos
del n�cleo est�n usando el m�dulo, llamado contador de referencia (que es 
el �ltimo n�mero de la l�nea en {\tt /proc/modules}). Si este n�mero es distinto de cero, 
{\tt rmmod} fallar�. La cuenta de referencia del m�dulo est� disponible en la
variable {\tt mod\_use\_count\_}. Como hay macros definidas para manejar esta
variable ({\tt MOD\_INC\_USE\_COUNT} y {\tt MOD\_DEC\_USE\_COUNT}), 
preferimos usarlas, mejor que utilizar {\tt mod\_use\_count\_} directamente, por
lo tanto ser� m�s seguro si la implementaci�n cambia en el futuro.%
\index{/proc/modules}%
\index{cuenta de referencia}%
\index{mod\_use\_count\_}%
\index{cleanup\_module}%
\index{MOD\_INC\_USE\_COUNT}%
\index{MOD\_DEC\_USE\_COUNT}



sourcesample(chardev.c, 02_chardev)


\section{Ficheros fuente para varias versiones del n�cleo}\label{kernel-ver}%
\index{versiones del n�cleo}

Las llamadas al sistema, que son el principal interfaz que el n�cleo
muestra a los procesos, generalmente permanecen igual de versi�n
a versi�n. Se puede a�adir una nueva llamada al sistema, pero 
normalmente las antiguas se comportar�n igual que de costumbre. 
Esto es necesario para la compatibilidad regresiva; una versi�n 
nueva del n�cleo se supone que {\bf no} romper� con los procesos regulares. En 
la mayor�a de los casos, los ficheros de dispositivo tambi�n permanecer�n igual. En
cambio, las interfaces internas dentro del n�cleo pueden y de hecho sufren
cambios entre las versiones.  

Las versiones del n�cleo Linux est�n divididas entre las versiones estables
(n.$<$n�mero par$>$.m) y las versiones en desarrollo (n.$<$n�mero impar$>$.m).
Las versiones en desarrollo incluyen todas las ideas nuevas,  incluyendo aquellas
que ser�n consideradas un error, o reimplementadas, en la siguiente versi�n. Como
resultado, no puedes confiar en que la interfaz permanecer� igual en estas
versiones (es por lo que no las tratamos en este libro, es mucho trabajo
y caducar�n r�pidamente). En las versiones estables, por otro lado, podemos 
esperar que el interfaz permanezca sin cambios sin importar la versi�n
de correcci�n de fallos (el n�mero m)%
\index{versi�n en desarrollo}\index{versi�n en desarrollo!n�cleo}%
\index{versi�n estable}\index{versi�n estable!n�cleo}.

Esta versi�n de la GPMNL incluye soporte para la versi�n 2.0.x y la versi�n
2.2.x del n�cleo Linux. Como hay diferencias entre las dos, esto requiere
compilaci�n condicional dependiendo de la versi�n del n�cleo. La forma con
la que hacemos esto es usando la macro {\tt LINUX\_VERSION\_CODE}. En la versi�n
a.b.c. del n�cleo, el valor de esta macro deber�a ser $2^{16}a+2^{8}b+c$. 
Para obtener el valor espec�fico de una versi�n espec�fica del n�cleo, podemos
usar la macro {\tt KERNEL\_VERSION}. Como no est� definida en 2.0.35, la 
definiremos nosotros mismos si es necesario.%
\index{n�cleo 2.0.x}\index{n�cleo 2.2.x}\index{versiones soportadas}%
\index{compilaci�n condicionada}%
\index{condicionada}\index{condicionada!compilaci�n}%
\index{LINUX\_VERSION\_CODE}\index{KERNEL\_VERSION}



\chapter{El sistema de ficheros /proc}\label{proc-fs}%
\index{sistema de ficheros proc}%
\index{sistema de ficheros /proc}%
\index{sistema de ficheros}\index{sistema de ficheros!/proc}

En Linux hay un mecanismo adicional para que el n�cleo y los m�dulos del n�cleo
env�en informaci�n a los procesos: el sistema de ficheros {\tt /proc}.
Originalmente dise�ado para permitir un f�cil acceso a la informaci�n 
sobre los procesos (de aqu� el nombre), ahora lo utiliza cualquier elemento del n�cleo
que tiene algo interesante que informar, como {\tt /proc/modules} que tiene
la lista de los m�dulos y {\tt /proc/meminfo} que tiene las estad�sticas
de uso de la memoria\index{/proc/modules}%
\index{/proc/meminfo}.

El m�todo para usar el sistema de ficheros proc es muy similar al usado
con los controladores de dispositivos: creas una estructura con toda
la informaci�n que necesita el fichero {\tt /proc}, incluyendo punteros 
a cualquier funci�n manejadora (en nuestro caso s�lo hay una, la que se
llama cuando alguien intenta leer del fichero {\tt /proc}). Entonces, 
{\tt init\_module} registra la estructura con el n�cleo y {\tt cleanup\_module}
la libera.

El motivo por el que usamos {\tt proc\_register\_dynamic}\footnote{En la versi�n
2.0, en la versi�n 2.2 esto es realizado autom�ticamente para nosotros si
establecemos el inodo a cero.} es porque no queremos determinar el n�mero
de inodo usado para nuestro fichero por adelantado, sino permitir al
n�cleo que lo determine para prevenir colisiones. Los sistemas de ficheros normales
est�n localizados en un disco, en vez de en memoria (que es donde est�
{\tt /proc}), y en ese caso el n�mero de inodo es un puntero a una posici�n
de disco donde el nodo �ndice del fichero (abreviadamente inodo) est� localizado. 
El inodo contiene informaci�n sobre el fichero, por ejemplo los permisos del
fichero, junto con un puntero a la posici�n o posiciones del disco donde
se pueden encontrar los datos del fichero\index{proc\_register\_dynamic}%
\index{proc\_register}%
\index{inode}.

Como a nosotros no se nos llama cuando el fichero se abre o 
se cierra, no podemos poner {\tt MOD\_INC\_USE\_COUNT} y {\tt MOD\_DEC\_USE\_COUNT}
en este m�dulo, ya que si el fichero es abierto y despu�s el m�dulo es borrado, 
no hay forma de evitar las consecuencias. En el siguiente cap�tulo veremos
una forma m�s dif�cil de implementar, pero m�s flexible, de tratar con los
ficheros {\tt /proc} que nos permitir� protegernos tambi�n de este problema.


sourcesample(procfs.c, 03_procfs)



\chapter{Usando /proc para la entrada}\label{proc-input}%  %yo cambiar�a este t�tulo. FVD
\index{Entrada}\index{Entrada!usando /proc para}%
\index{/proc}\index{/proc!usando para entrada}%
\index{proc!usando para entrada}

Hasta ahora tenemos dos formas de producir una salida a partir de los m�dulos del n�cleo: podemos
registrar un controlador de dispositivo y {\tt mknod} el fichero de dispositivo, 
o podemos crear un fichero {\tt /proc}. Esto permite al m�dulo del n�cleo 
decirnos cualquier cosa que quiera. El �nico problema es que no tenemos ninguna forma
de responderle. La primera forma en que enviaremos entrada a los
m�dulos del n�cleo ser� volviendo a escribir en el fichero {\tt /proc}.

Como el sistema de ficheros proc se escribi� principalmente para
permitir al n�cleo informar de su situaci�n a los procesos, no hay medidas
especiales para la entrada. La estructura {\tt proc\_dir\_entry} no incluye
un puntero a una funci�n de entrada, de la misma forma que incluye un puntero
a una funci�n de salida. En vez de esto, para escribir en un fichero {\tt /proc}, 
necesitamos usar el mecanismo est�ndar del sistema de ficheros%
\index{proc\_dir\_entry structure}%
\index{struct proc\_dir\_entry}.

En Linux hay un mecanismo est�ndar para el registro de sistemas de ficheros. 
Como cada sistema de ficheros tiene que tener sus propias funciones para
manejar las operaciones de inodos y ficheros\footnote{La diferencia entre ellas
es que las operaciones de ficheros tratan con el propio fichero, y las operaciones
de inodo tratan con las formas de referenciar el fichero, tales como crear
enlaces a �l.}, hay una estructura especial para mantener los punteros a todas
estas funciones, {\tt struct inode\_operations}, que incluye un puntero
a {\tt struct file\_operations}. En /proc, cuando registramos un nuevo fichero, 
se nos permite especificar qu� {\tt struct inode\_operations} se usar� para 
acceder a �l. �ste es el mecanismo que usaremos, una {\tt struct inode\_operations}
que incluya punteros a nuestras funciones {\tt module\_input} y
{\tt module\_output}%
\index{registro de sistema de ficheros}%
\index{sistema de ficheros!registro}%
\index{struct inode\_operations}%
\index{inode\_operations structure}%
\index{struct file\_operations}%
\index{file\_operations structure}.

Es importante destacar que los papeles est�ndar de lectura y escritura
est�n invertidos en el n�cleo. Las funciones de lectura se usan para
la salida, mientras que las funciones de escritura se usan para la entrada.
El motivo de esto es que la lectura y escritura se refieren al punto de
vista del usuario: si un proceso lee algo del n�cleo, entonces el 
n�cleo necesita sacarlo, y si un proceso escribe algo en el n�cleo, 
entonces el n�cleo lo recibe como entrada\index{lectura}%
\index{lectura!en el n�cleo}%
\index{escritura}\index{escritura!en el n�cleo}.

Otro punto interesante aqu� es la funci�n {\tt module\_permission}. Esta 
funci�n se llama cuando un proceso intenta hacer algo con el fichero
{\tt /proc}, y puede decidir si permitir el acceso o no. Ahora mismo
est� solamente basado en la operaci�n y el uid del usuario actual (tal
como est� disponible en {\tt current}, un puntero a una estructura
que incluye informaci�n del proceso actualmente en ejecuci�n), pero puede
estar basado en cualquier cosa que queramos, como lo que otros
procesos est�n haciendo con el mismo fichero, la hora del d�a, o la �ltima
entrada recibida\index{module\_permissions}%
\index{permisos}%
\index{puntero actual}%
\index{actual}\index{actual!puntero}


El motivo para {\tt put\_user} y {\tt get\_user} es que la memoria de Linux
(bajo la arquitectura Intel, quiz�s sea diferente bajo otros procesadores) 
est� segmentada. Esto significa que un puntero, por s� mismo, no referencia
una �nica posici�n en memoria, s�lo una posici�n en un segmento
de memoria, y necesitas saber qu� segmento es para poder
usarlo. Hay un segmento de memoria para el n�cleo, y uno
para cada proceso\index{put\_user}%
\index{get\_user}%
\index{segmentos de memoria}%
\index{memoria}\index{memoria!segmento}.


El �nico segmento de memoria accesible a un proceso es el suyo, por lo
tanto cuando escribimos programas normales para ejecutarse como procesos no
hay necesidad de preocuparse por los segmentos. Cuando escribes un m�dulo
del n�cleo, normalmente quieres acceder al segmento de memoria del n�cleo, 
que es manejado autom�ticamente por el sistema. Sin embargo, cuando el
contenido de un b�fer de memoria necesita passarse entre el proceso
actualmente en ejecuci�n y el n�cleo, la funci�n del n�cleo recibe un puntero 
al b�fer de memoria que est� en el segmento del proceso. Las macros
{\tt put\_user} y {\tt get\_user} nos permiten acceder a esa memoria.



sourcesample(procfs.c, 04_procfs2)



\chapter{Hablando con los ficheros de dispositivo (escrituras y IOCTLs)}\label{dev-input}%
\index{ficheros de dispositivo!entrada a}%
\index{entrada a ficheros de dispositivos}%
\index{ioctl}%
\index{escritura!a ficheros de dispositivos}

Los ficheros de dispositivos se supone que representan dispositivos
f�sicos. La mayor�a de los dispositivos f�sicos se utilizan para
salida y para entrada, por lo tanto tiene que haber alg�n mecanismo
para que los controladores de dispositivos que est�n en el n�cleo obtengan la salida
a enviar al dispositivo desde los procesos. Esto se hace abriendo
el fichero del dispositivo para salida y escribiendo en �l, igual que se
escribe en un fichero. En el siguiente ejemplo, esto se implementa
mediante {\tt device\_write}.

Esto no es siempre suficiente. Imag�nate que tienes un puerto serie conectado
a un m�dem (incluso si tienen un m�dem interno, todav�a se implementa desde
la perspectiva de la CPU como un puerto serie conectado a un m�dem, por lo
tanto no tienes que hacer que tu imaginaci�n trabaje mucho). Lo natural ser�a
usar el fichero del dispositivo para escribir cosas al m�dem (tanto comandos del m�dem
como datos que se enviar�n a trav�s de la l�nea telef�nica) y leer cosas desde el m�dem
(respuestas a �rdenes o datos recibidos a trav�s de la l�nea telef�nica).
De todos modos esto deja abierta la pregunta de qu� hacer cuando necesitas hablar con
el puerto serie, por ejemplo para enviarle la velocidad a la que los datos
se env�an y se reciben\index{puerto serie}\index{m�dem}.

La respuesta en Unix es usar una funci�n especial llamada {\tt ioctl} (abreviatura
de {\bf i}nput {\bf o}utput {\bf c}on{\bf t}ro{\bf l}). Cada dispositivo tiene
sus propias �rdenes {\tt ioctl}, que pueden leer {\tt ioctl}'s (para
enviar informaci�n desde un proceso al n�cleo), escribir {\tt ioctl}'s (para
devolver informaci�n a un proceso),
\footnote{Ten en cuenta que aqu� los papeles de leer y escribir se han intercambiado
{\em otra vez}, por lo tanto en las lecturas {\tt ioctl} se env�a informaci�n
al n�cleo y las escrituras reciben informaci�n desde el n�cleo.} ambas o ninguna.
La funci�n se llama con tres par�metros; el descriptor del fichero del 
dispositivo apropiado, el n�mero de ioctl, y un par�metro, que es 
de tipo long y al que le puedes hacer una conversi�n (cast) para
usarlo para pasar cualquier cosa.
\footnote{Esto no es exacto. No podr�s pasarle una estructura, por
ejemplo, a trav�s de un ioctl; pero podr�s  pasarle un puntero
a la estructura.}

El n�mero ioctl codifica el n�mero mayor del dispositivo, el tipo de la ioctl, 
la orden y el tipo del par�metro. Este n�mero ioctl es normalmente
creado por una llamada a una macro ({\tt \_IO}, {\tt \_IOR}, {\tt \_IOW} o
{\tt \_IOWR}, dependiendo del tipo) en el fichero de cabeceras. Este
fichero de cabeceras deber�a  ser incluido ({\tt \#include}) tanto en 
los programas que van a usar {\tt ioctl} (para que puedan generar los {\tt ioctl}s
apropiados) como por el m�dulo del n�cleo (para que lo entienda). En el 
ejemplo siguiente, el fichero de cabeceras es {\tt chardev.h} y el 
programa que lo usa es {\tt ioctl.c}\index{\_IO}%
\index{\_IOR}%
\index{\_IOW}%
\index{\_IOWR}

Si quieres usar {\tt ioctl}s en tus propios m�dulos del n�cleo, es mejor
recibir un asignaci�n {\tt ioctl} oficial, por que si accidentalmente coges
los {\tt ioctl}s de alguien, o alguien coge los tuyos, sabr�s que algo est� mal.
Para m�s informaci�n, consulta el �rbol del c�digo fuente del n�cleo en
``{\tt Documentation/ioctl-number.txt}''\index{asignaci�n oficial ioctl}%
\index{ioctl!asignaci�n oficial}.


sourcesample(chardev.c, 05_devrw)
sourcesample(chardev.h, 05_devrw)%
\index{ioctl!definiendo}%
\index{definiendo ioctls}%
\index{ioctl!fichero de cabeceras para}%
\index{fichero de cabeceras para ioctls}

sourcesample(ioctl.c, 05_devrw)%
\index{ioctl!us�ndolo en un proceso}


\chapter{Par�metros de inicio}\label{startup-param}% %este cap�tulo se cae en la versi�n 2.4
\index{par�metros de inicio}%
\index{inicio}\index{inicio!par�metros de}


En muchos ejemplos previos, tuvimos que codificar algo en el m�dulo
del n�cleo, tal como el nombre del fichero para los ficheros {\tt /proc}
o el n�mero mayor del dispositivo para el dispositivo para que pudi�ramos
hacer ioctls en �l. Esto va en contra de la filosof�a de Unix, y Linux, 
que es escribir un programa flexible que el usuario pueda configurar%
\index{codificar}.

La forma de decirle a un programa, o a un m�dulo del n�cleo, algo que
necesitan antes de empezar a trabajar es mediante los par�metros de la l�nea de
�rdenes. En el caso de los m�dulos del n�cleo, no disponemos de {\tt argc} 
y {\tt argv}; en cambio tenemos algo mejor. Podemos definir
variables globales en el m�dulo del n�cleo e {\tt insmod} las rellenar� por
nosotros\index{argc}\index{argv}.

En este m�dulo del n�cleo definimos dos de ellas: {\tt str1} y {\tt str2}.
Todo lo que necesitas hacer es compilar el m�dulo del n�cleo y entonces
ejecutar {\tt insmod str1=xxx str2=yyy}.
Cuando  se llama a {\tt init\_module}, {\tt str1} apuntar� a la cadena de caracteres 
``{\tt xxx}'' y {\tt str2} a la cadena de caracteres ``{\tt yyy}''%
\index{insmod}.

En la versi�n 2.0 no hay comprobaci�n de tipos de estos argumentos\footnote{No puede
haberlos, ya que bajo C el fichero objeto s�lo tiene la localizaci�n de
las variables globales, no de su tipo. Esto es por lo que los ficheros
de cabeceras son necesarios}. Si el primer car�cter de {\tt str1} o {\tt str2}
es un d�gito, el n�cleo rellenar� la variable con el valor del entero, en vez de
con un puntero a la cadena de caracteres. En una situaci�n de la vida real
tienes que verificar esto\index{comprobaci�n de tipos}.

En cambio, en la versi�n 2.2 usas la macro {\tt MACRO\_PARM} para decir
a {\tt insmod} lo que esperas como par�metros, su nombre {\em y su tipo}.
Esto resuelve el problema de los tipos y permite a los m�dulos del n�cleo 
recibir cadenas de caracteres que empiezan con un d�gito, por ejemplo%
\index{MACRO\_PARM}%
\index{insmod}.

sourcesample(param.c, 06_params)



\chapter{Llamadas al sistema}\label{sys-call}%
\index{llamadas al sistema}%
\index{sistema}\index{sistema!llamadas al}

Hasta ahora lo �nico que hemos hecho ha sido usar mecanismos bien
definidos del n�cleo para registrar ficheros {\tt proc} y manejadores de 
dispositivos. Esto est� muy bien si quieres hacer algo que los
programadores del n�cleo pensaron que querr�as hacer, como escribir un 
controlador de dispositivo. Pero �y si quieres escribir algo inusual, 
cambiar el comportamiento del sistema de alguna forma? Entonces, te
encuentras solo.

Aqu� es d�nde la programaci�n del n�cleo se vuelve peligrosa. 
Al escribir el ejemplo siguiente elimin� la llamada al sistema {\tt open}.
Esto significa que no podr�a abrir ning�n fichero, no podr�a ejecutar
ning�n programa, y no podr�a {\tt apagar} la computadora. Tuve que pulsar
el interruptor. Afortunadamente, no se muri� ning�n fichero. Para asegurate
de que t� tampoco pierdas ning�n fichero, por favor ejecuta {\tt sync} justo
antes de hacer el {\tt insmod} y el {\tt rmmod}%
\index{sync}%
\index{insmod}%
\index{rmmod}%
\index{shutdown}.

Olv�date de los ficheros {\tt /proc}, olv�date de los ficheros de los dispositivos.
Son s�lo detalles menores. El mecanismo {\em real} de comunicaci�n entre
los procesos y el n�cleo, el que usan todos los procesos, son las
llamadas al sistema. Cuando un proceso pide un servicio al n�cleo (tal como
abrir un fichero, ramificarse en un nuevo proceso o pedir m�s memoria), �ste es
el mecanismo que se usa. Si quieres cambiar el comportamiento del n�cleo de
formas interesantes, �ste es el sitio para hacerlo.  Por cierto, si quieres
ver las llamadas al sistema que usa un programa, ejecuta 
{\tt strace {\lbr}orden{\rbr} {\lbr}argumentos{\rbr}}%
\index{strace}.

En general, un proceso se supone que no puede acceder al n�cleo. No
puede acceder a la memoria del n�cleo y no puede llamar a las funciones del
n�cleo. El hardware de la CPU fuerza esto (por eso
se le llama ``modo protegido'').
Las llamadas al sistema son una excepci�n a esta regla general. Lo que sucede
es que el proceso rellena los registros con los valores apropiados y entonces
llama a una instrucci�n especial, que salta a una posici�n previamente
definida dentro del n�cleo (por supuesto, la posici�n es legible por los procesos
de usuario, pero no pueden escribir en ella). Bajo las CPUs de Intel, esto se hace por
medio de la interrupci�n 0x80.
El hardware sabe que una vez que saltas a esta localizaci�n, ya no te estar�s 
ejecutando en el modo restringido de usuario, sino como el n�cleo del sistema
operativo. Y entonces se te permite hacer todo lo que quieras%
\index{interrupci�n 0x80}.

A la posici�n en el n�cleo a la que un proceso puede saltar se le llama {\tt system\_call}.
El procedimiento en esa posici�n verifica el n�mero de la llamada al sistema, 
que le dice al n�cleo qu� servicio ha pedido el proceso. Despu�s mira
en la tabla de llamadas al sistema ({\tt sys\_call\_table}) para ver la direcci�n
de la funci�n del n�cleo a llamar. A continuaci�n llama a la funci�n, y despu�s
de retornar hace unas pocas comprobaciones del sistema y luego regresa al proceso (o a un
proceso diferente, si el tiempo del proceso ha finalizado). Si quieres leer
este c�digo, est� en el fichero fuente {\tt arch/$<$architecture$>$/kernel/entry.S}, 
despu�s de la l�nea {\tt ENTRY(system\_call)}%
\index{system\_call}%
\index{ENTRY(system\_call)}%
\index{sys\_call\_table}%
\index{entry.S}.

Por lo tanto, si queremos cambiar la forma en que funciona una cierta
llamada al sistema, lo que tenemos que hacer es escribir nuestra
propia funci�n para implementarla (normalmente a�adiendo un poco de
nuestro c�digo y despu�s llamando a la funci�n original) y entonces
cambiar el puntero que est� en {\tt sys\_call\_table} para que apunte
a nuestra funci�n. Como es posible que seamos eliminados m�s tarde y
no queremos dejar el sistema en un estado inestable, es importante que
{\tt cleanup\_module} restaure la tabla a su estado original.

El presente c�digo fuente es un ejemplo de m�dulo del n�cleo. Queremos
``espiar'' a un cierto usuario e imprimir un mensaje (con printk) cuando el
usuario abra un fichero. Para conseguir dicha meta, reemplazamos la llamada
al sistema que abre un fichero con nuestra propia funci�n, llamada {\tt our\_sys\_open}.
Esta funci�n verifica el uid (identificaci�n del usuario) del proceso actual, y
si es igual al uid que queremos espiar, llama a {\tt printk} para mostrar el nombre
del fichero que se va a abrir. Luego llama a la funci�n original {\tt open} 
con los mismos par�metros, para realmente abrir el fichero\index{abrir}\index{abrir!llamada al sistema}.

La funci�n {\tt init\_module} sustituye la localizaci�n apropiada que est� en
{\tt sys\_call\_table} y mantiene el puntero original en una variable. La funci�n {\tt cleanup\_module}
utiliza dicha variable para devolver todo a su estado normal. Esta aproximaci�n
es peligrosa, por la posibilidad de que dos m�dulos del n�cleo
cambien la misma llamada al sistema. Imag�nate que tenemos dos m�dulos
del n�cleo, A y B. La llamada al sistema de A ser� A\_open y la de
B ser� B\_open. Ahora, cuando A se inserta en el n�cleo, la
llamada al sistema es reemplazada con A\_open, la cual llamar� a la 
sys\_open original cuando haya acabado. A continuaci�n, B es insertado en 
el n�cleo, que reemplaza la llamada al sistema con B\_open, que a su vez ejecutar�
la llamada al sistema que �l piensa que es la original, A\_open, cuando haya terminado. 

Ahora, si B se quita primero, todo estar� bien: simplemente
restaurar� la llamada al sistema a A\_open, la cual llama a la
original. En cambio, si se quita A  y  despu�s se quita B, el
sistema se caer�. El borrado de A restaurar� la llamada original al sistema,
sys\_open, sacando a B fuera del bucle. Entonces, cuando B es borrado, restaurar�
la llamada al sistema a la que {\bf �l} piensa que es la original, A\_open, que ya
no est� en memoria. A primera vista, parece que podr�amos resolver
este problema particular verificando si la llamada al sistema es igual
a nuestra funci�n open y si lo es no cambi�ndola (de forma que
B no cambie la llamada al sistema cuando se borre), lo
que causar� un problema peor a�n. Cuando se borra A, a �l le parece que la
llamada al sistema fue cambiada a B\_open y as� que ya no apunta a
A\_open, y por lo tanto no la restaurar� a sys\_open antes de ser
borrado de memoria. Desgraciadamente B\_open a�n intentar� llamar a
A\_open, que ya no est� all�, por lo que incluso sin quitar B 
el sistema se caer�.
 
Se me ocurren dos formas de prevenir este problema. La primera es restaurar
la llamada al valor original, sys\_open. Desgraciadamente, sys\_open no es
parte de la tabla del sistema del n�cleo que est� en {\tt /proc/ksyms}, por tanto
no podemos acceder a ella. La otra soluci�n es usar el contador de referencias
para evitar que root pueda borrar el m�dulo una vez cargado. Esto es
bueno para de m�dulos de producci�n, pero malo para un ejemplo
de aprendizaje (que es por lo que no lo hice aqu�%
\index{rmmod}\index{MOD\_INC\_USE\_COUNT}%
\index{sys\_open}).

sourcesample(syscall.c, 07_syscall)


\chapter{Procesos bloqueantes}\label{blocks}%
\index{procesos bloqueantes}%
\index{bloqueantes}\index{bloqueantes!procesos}

�Qu� puedes hacer cuando alguien te pregunta por algo que no puedes hacer en el acto?
Si eres un humano y est�s te est� molestando un humano, lo �nico
que puedes decir es: ``Ahora no. Estoy ocupado. {\em !`Vete!}''. Pero si eres
un m�dulo del n�cleo y un proceso te est� molestando, tienes otra
posibilidad. Puedes poner el proceso a dormir hasta que lo puedas atender.
Despu�s de todo, los procesos son puestos a dormir por el n�cleo y todos son 
despertados al mismo tiempo (esta es la forma en la que varios procesos
aparentan ejecutarse a la vez en una sola CPU)%
\index{multi tarea}%
\index{ocupado}.

Este m�dulo del n�cleo es un ejemplo de esto. El fichero (llamado {\tt /proc/sleep})
s�lo puede ser abierto por un solo proceso a la vez. Si el fichero ya est�
abierto, el m�dulo del n�cleo llama a {\tt module\_interruptible\_sleep\_on}\footnote{
La forma m�s f�cil de mantener un fichero abierto es con {\tt tail -f}.}. Esta
funci�n cambia el estado de la tarea (una tarea es la estructura de datos del
n�cleo que mantiene informaci�n sobre un proceso y la llamada al sistema en
la que est�, si es que est� en alguna) a {\tt TASK\_INTERRUPTIBLE}, lo que
significa que la tarea no se ejecutar� hasta que sea despertada de alguna forma,
y se a�ade a {\tt WaitQ}, la cola de tareas esperando acceder al fichero.
Entonces, la funci�n llama al planificador para hacer un cambio de contexto
a un proceso diferente, uno que tenga alguna utilidad para la CPU%
\index{interruptible\_sleep\_on}%
\index{TASK\_INTERRUPTIBLE}%
\index{dormir}\index{dormir!poniendo lo procesos a}%
\index{procesos}\index{procesos!poniendo a dormir}%
\index{poniendo procesos a dormir}%
\index{task structure}%
\index{estructura}\index{estructura!task}.

Cuando un proceso ha acabado con el fichero, lo cierra, y se llama a {\tt module\_close}.
Esta funci�n despierta a todos los procesos en la cola (no hay un
mecanismo para despertar s�lo a uno de ellos). Entonces retorna y el
proceso que acaba de cerrar el fichero puede continuar ejecut�ndose. 
A la vez, el planificador decide que ese proceso ya tuvo suficiente tiempo y le da
el control de la CPU a otro proceso. Eventualmente, a uno de los procesos que
estaba en la cola le ser� concecido el control de la CPU por parte del planificador.
�ste empieza en el punto justo despu�s de la llamada a {\tt module\_interruptible\_sleep\_on}
\footnote{Esto significa que el proceso a�n est� en modo n�cleo; en lo
que concierne al proceso, �ste emiti� la llamada al sistema {\tt open}
y la llamada al sistema no ha regresado todav�a. El proceso no conoce a nadie
que usara la CPU durante la mayor�a del tiempo entre el momento en el que
hizo la llamada y el momento en el que regres�.}. Puede proceder a 
establecer un variable global para decirles a todos los dem�s procesos que el 
fichero a�n est� abierto y seguir con su vida. Cuando los otros procesos obtienen
un poco de CPU, ver�n la variable global y volver�n a dormirse%
\index{despertando procesos}%
\index{procesos!despertando}%
\index{multitarea}%
\index{planificador}.

Para hacer nuestra vida m�s interesante, {\tt module\_close} no tiene el
monopolio de despertar a los procesos que est�n esperando a
acceder al fichero. Una se�al, tal como Ctrl-C ({\tt SIGINT}) tambi�n
puede despertar a un proceso\footnote{Esto es porque nosotros
usamos {\tt module\_interruptible\_sleep\_on}. Pod�amos haber usado
{\tt module\_sleep\_on} en vez de ella, pero lo que conseguir�amos 
ser�an usuarios extremadamente enfadados cuyos Ctrl-C's ser�an ignorados.}
En este caso, queremos regresar inmediatamente con {\tt -EINTR}. Esto es
importante para que los usuarios puedan, por ejemplo, matar el
proceso antes de que reciba el fichero%
\index{module\_wake\_up}%
\index{se�al}%
\index{SIGINT}%
\index{ctrl-c}%
\index{EINTR}%
\index{procesos!matando}%
\index{module\_sleep\_on}%
\index{sleep\_on}.

Hay un punto m�s que recordar. Algunas veces los procesos no quieren dormir, 
quieren o bien coger lo que quieren inmediatamente, o bien que les digan 
que ello no es posible. Tales procesos usan la bandera {\tt O\_NONBLOCK}
cuando abren el fichero. Se supone que el n�cleo responde retornando
con el c�digo de error {\tt -EAGAIN} desde operaciones que en caso
contrario se bloquear�an, tales como abrir el fichero en este ejemplo. El programa
cat\_noblock, disponible en el directorio fuente de este cap�tulo, puede 
utilizarse para abrir el fichero con {\tt O\_NONBLOCK}%
\index{O\_NONBLOCK}%
\index{no bloqueante}%
\index{bloqueo, c�mo evitarlo}%
\index{EAGAIN}.



sourcesample(sleep.c, 08_sleep)



\chapter{Reemplazando printk's}\label{printk}%
\index{printk!reemplazando}%
\index{reemplazando printk's}

Al principio (cap�tulo~\ref{hello-world}), dije que X y la programaci�n
de m�dulos del n�cleo no se mezclaban. Esto es verdad para el desarrollo
de m�dulos del n�cleo, pero en el uso real quieres poder
enviar mensajes a cualquiera que sea el tty\footnote{{\bf T}ele{\bf ty}pe,
originalmente una combinaci�n de teclado e impresora usada para comunicarse
con un sistema Unix, y hoy una abstracci�n para el flujo de texto
usado para un programa Unix, ya sea un terminal f�sico, un xterm, una
pantalla X, una conexi�n de red usada con telnet, etc.} de donde vino la orden que
carg� el m�dulo.

%% Esto es importante para identificar errores despu�s de   % esto se ha ca�do de la versi�n final. FVD
%% que el m�dulo del n�cleo es liberado, porque ser� usado por todos ellos.

La forma de hacer esto es usando {\tt current}, un puntero a la
tarea actualmente en ejecuci�n, para obtener la estructura tty de la
tarea actual. Despu�s miramos dentro de la estructura tty para encontrar
un puntero a una funci�n de escritura de cadenas de caracteres, que usamos
para escribir una cadena de caracteres a la tty%
\index{tarea actual}\index{tarea}\index{tarea!actual}%
\index{tty\_struct}\index{estructura!tty}.


sourcesample(printk.c, 09_printk)



\chapter{Planificando tareas}\label{sched}%
\index{planificando tareas}\index{tareas!planificando}

Muy frecuentemente tenemos tareas ``de labores dom�sticas'' que tienen
que ser realizadas en un cierto tiempo, o todas frecuentemente.  % every so often ?? FVD
Si la tarea tiene que ser realizada por un proceso, lo haremos
poni�ndolo en el fichero {\tt crontab}. Si la tarea es realizada por
un m�dulo del n�cleo, tenemos dos posibilidades. La primera es poner
un proceso en el fichero {\tt crontab} que despertar� al m�dulo
mediante una llamada al sistema cuando sea necesario, por ejemplo
abriendo un fichero. Sin embargo esto es terriblemente ineficiente:
ejecutamos un proceso a partir de {\tt crontab}, leemos un ejecutable
nuevo hacia la memoria, y todo esto para despertar a un m�dulo del
n�cleo que de todas formas est� en memoria%
\index{dom�sticas}\index{crontab}.

En vez de hacer eso, podemos crear una funci�n que ser� llamada una vez
en cada interrupci�n del reloj. La forma en la que hacemos esto es
creando una tarea, mantenida en una {\tt estructura tq\_struct}, que
mantendr� un puntero a la funci�n. Entonces usamos {\tt queue\_task}
para poner esta tarea en una lista de tareas llamada {\tt tq\_timer}, que
es la lista de tareas que han de ejecutarse en la siguiente interrupci�n
de reloj. Como queremos que la funci�n siga siendo ejecutada, 
necesitamos ponerla otra vez en {\tt tq\_timer} al ser llamada, para
la siguiente interrupci�n del reloj%
\index{struct tq\_struct}\index{tq\_struct struct}%
\index{queue\_task}%
\index{tarea}%
\index{tq\_timer}.

Hay un punto m�s que necesitamos recordar aqu�. Cuando un m�dulo es quitado
mediante {\tt rmmod}, primero se verifica su contador de referencias. Si es cero, 
se llama a {\tt module\_cleanup}. Entonces se quita el m�dulo de la memoria
con todas sus funciones. Nadie controla si la lista de tareas del
reloj contiene un puntero a una de estas funciones, que ya no estar�n
disponibles. A�os despu�s (desde la perspectiva de la computadora; para
la perspectiva de un humano no es nada, menos de una mil�sima de segundo), el
n�cleo tiene una interrupci�n de reloj e intenta llamar a la funci�n que est� en la lista
de tareas. Desgraciadamente, la funci�n ya no est� all�. En la mayor�a de
los casos, la p�gina de memoria donde resid�a est� sin utilizar, y
obtienes un feo mensaje de error. Pero si alg�n otro c�digo est� ahora
situado en la misma posici�n de memoria, las cosas podr�an ponerse
{\bf muy} feas. Desgraciadamente, no tenemos una forma f�cil de eliminar
una tarea de una lista de tareas%
\index{rmmod}%
\index{cuenta de referencia}%
\index{module\_cleanup}.

Como {\tt cleanup\_module} no puede retornar con un c�digo de error (es
una funci�n void), la soluci�n es no dejar que retorne. En vez de ello, 
llama a {\tt sleep\_on} o {\tt module\_sleep\_on}\footnote{Ambas son realmente
lo mismo.} para poner el proceso {\tt rmmod} a dormir. Antes de eso,
informa a la funci�n llamada por la interrupci�n del reloj para que pare
de apuntarse estableciendo una variable global. Entonces, en la siguiente 
interrupci�n del reloj, el proceso {\tt rmmod} ser� despertado, cuando nuestra
funci�n ya no est� en la cola y es seguro quitar el m�dulo%
\index{sleep\_on}\index{module\_sleep\_on}.

sourcesample(sched.c, 10_sched)


\chapter{Manejadores de interrupciones}\label{int-handler}%
\index{manejadores de interrupciones}%
\index{interrupci�n}\index{interrupci�n!manejador}

Excepto para el �ltimo cap�tulo, todo lo que hemos hecho hasta ahora en el n�cleo ha
sido como respuesta a un proceso que lo pide, ya sea tratando
con un fichero especial, enviando un {\tt ioctl()}, o a trav�s de una llamada
al sistema. Pero el trabajo del n�cleo no es s�lo responder a las peticiones
de los procesos. Otro trabajo no menos importante es hablar
con el hardware conectado a la m�quina.

Hay dos tipos de interacci�n entre la CPU y el resto del hardware de la
computadora. El primer tipo es cuando la CPU da �rdenes al hardware, el
el otro es cuando el hardware necesita decirle algo a la CPU.
La segunda, llamada interrupci�n, es mucho m�s dif�cil de implementar
porque hay que tratar con ella cuando le conviene al hardware, no a la CPU. 
Los dispositivos hardware t�picamente tienen una peque�a cantidad de RAM, y
si no lees su informaci�n cuando est� disponible, se pierde.

Bajo Linux, las interrupciones hardware se llaman IRQs (abreviatura de
{\bf I}nterrupt {\bf R}e{\bf q}uests)\footnote{Esta es una nomenclatura
est�ndar de la arquitectura Intel donde Linux se origin�.}.  Hay dos tipos
de IRQs, cortas y largas. Una IRQ corta es la que se espera que dure un
periodo de tiempo {\bf muy} corto, durante el cual el resto de la m�quina estar�
bloqueado y ninguna otra interrupci�n ser� manejada. Una IRQ larga es una que 
puede durar m�s tiempo, y durante la cual otras interrupciones pueden ocurrir (pero
no interrupciones que vengan del mismo dispositivo). Si es posible, siempre es mejor
declarar un manejador de interrupciones como largo.

Cuando la CPU recibe una interrupci�n, detiene lo que quiera que est� haciendo
(a menos que se encuentre procesando una interrupci�n m�s prioritaria, en cuyo
caso tratar� con esta interrupci�n s�lo cuando la m�s prioritaria se haya
acabado), salva ciertos par�metros en la pila y llama al manejador de interrupciones.
Esto significa que ciertas cosas no se permiten dentro del propio manejador de interrupciones,
porque el sistema se encuentra en un estado desconocido. La soluci�n a este
problema es que el manejador de interrupciones haga lo que necesite
hacer inmediatamente, normalmente leer algo desde el hardware o 
enviar algo al hardware, y despu�s planificar el manejo de la nueva informaci�n
en un tiempo posterior (esto se llama ``bottom half'') y retorna. El n�cleo
est� garantizado que llamar� al bottom half tan pronto como sea posible; y 
cuando lo haga, todo lo que est� permitido en los m�dulos del n�cleo estar� 
permitido\index{bottom half}.

La forma de implementar esto es llamar a {\tt request\_irq()} para que se llame
a tu manejador de interrupciones cuando se reciba la IRQ relevante
(hay 15 de ellas, m�s una que se utiliza para disponer en cascada
los controladores de interrupci�n, en las plataformas Intel). %% ya puestos adaptamos esto de la versi�n 2.4. FVD
Esta funci�n recibe el n�mero 
de IRQ, el nombre de la funci�n, banderas, un nombre para {\tt /proc/interrupts}
y un par�metro para pasarle al manejador de interrupciones. Las banderas pueden
incluir {\tt SA\_SHIRQ} para indicar que est�s permitiendo compartir la IRQ con
otro manejador de interrupciones (normalmente porque un n�mero de dispositivos
hardware est�n en la misma IRQ) y {\tt SA\_INTERRUPT} para indicar que
esta es una interrupci�n r�pida. Esta funci�n s�lo tendr� �xito si no hay ya
un manejador para esta IRQ, o si ya la estais compartiendo%
\index{request\_irq}%
\index{/proc/interrupts}%
\index{SA\_SHIRQ}%
\index{SA\_INTERRUPT}.

Entonces, desde dentro del manejador de interrupciones, nos comunicamos con 
el hardware y despu�s usamos {\tt queue\_task\_irq()} con {\tt tq\_immediate()}
y {\tt mark\_bh(BH\_IMMEDIATE)} para planificar el bottom half. El motivo por el que no podemos usar
la {\tt queue\_task} est�ndar en la versi�n 2.0 es que la interrupci�n
podr�a producirse en el medio de la {\tt queue\_task} de alguien
\footnote{{\tt queue\_task\_irq} est� protegida de esto mediante un bloqueo global;
en 2.2 no hay {\tt queue\_task\_irq} y {\tt queue\_task} est� protegida por
un bloqueo.}. Necesitamos {\tt mark\_bh} porque las versiones anteriores de 
Linux s�lo ten�an un array de 32 bottom half's, y ahora uno de ellos 
({\tt BH\_IMMEDIATE}) se usa para la lista enlazada de bottom half's para
los controladores que no ten�an una entrada de bottom half asignada%
\index{queue\_task\_irq}%
\index{queue\_task}%
\index{tq\_immediate}%
\index{mark\_bh}%
\index{BH\_IMMEDIATE}.


\section{Teclados en la arquitectura Intel}\label{teclado}%
\index{teclado}\index{arquitectura Intel}\index{arquitectura Intel!teclado}

% \bf Atenci�n:   %  ya no es un warning. FVD
El resto de este cap�tulo es completamente espec�fico de Intel. Si
no est�s trabajando en una plataforma Intel, no funcionar�. Ni siquiera intentes
compilar el siguiente c�digo.


Tuve un problema escribiendo el c�digo de ejemplo para este cap�tulo. Por
una parte, para que un ejemplo sea �til tiene que ejecutarse en las computadoras de todo
el mundo con resultados significativos. Por otra parte, el n�cleo ya incluye
controladores de dispositivo para todos los dispositivos comunes, y esos
controladores de dispositivo no coexistir�n con lo que voy a escribir. La
soluci�n que encontr� fue escribir algo para la interrupci�n del teclado, y
deshabilitar primero el manejador normal de interrupci�n del teclado. Como
est� definido como un s�mbolo est�tico en los ficheros fuente del n�cleo
(concretamente {\tt drivers/char/keyboard.c}), no hay forma de restaurarlo.
Antes de instalar este c�digo, haz en otro terminal {\tt sleep 120 ; reboot}  % insmodear? FVD
si es que valoras en algo tu sistema de ficheros.

Este c�digo se registra para la IRQ 1, que es la IRQ controlada por
el teclado bajo las arquitecturas Intel. Entonces, cuando recibe una
interrupci�n de teclado, lee el estado del teclado (que es el prop�sito
 de {\tt inb(0x64)}) y el c�digo de barrido (scan code), que es el valor devuelto por el 
teclado. Tan pronto como el n�cleo cree que es factible, ejecuta
{\tt got\_char} que da el c�digo de la tecla usada (los siete primeros bits
del c�digo de barrido) y si ha sido presionado (si el octavo bit es cero) 
o soltado (si es uno)\index{inb}.

%jop�, hay m�s errores que palabras . FVD


sourcesample(intrpt.c, 11_intrp)


\chapter{Multiproceso sim�trico}\label{smp}%
\index{SMP}%
\index{multiproceso}%
\index{multiproceso sim�trico}%
\index{proceso}\index{proceso!multi}
 
Una de las formas m�s f�ciles y baratas de aumentar el rendimiento del hardware
es poner m�s de una CPU en la placa. Esto se puede realizar haciendo que
CPUs diferentes tengan trabajos diferentes (multiproceso asim�trico)
o haciendo que todos se ejecuten en paralelo, realizando el mismo trabajo
(multiproceso sim�trico o SMP). El hacer multiproceso 
asim�trico requiere un conocimiento especializado sobre las
tareas que la computadora debe ejecutar, lo que no est� a nuestro alcance en
un sistema operativo de prop�sito general como Linux. En cambio el
multiproceso sim�trico es relativamente f�cil de implementar%
\index{CPU}\index{CPU!varias}.
 
Por relativamente f�cil, quiero decir exactamente eso; no que sea {\em realmente}
f�cil. En un entorno de multiproceso sim�trico, las CPUs comparten
la misma memoria, y como resultado, el c�digo que corre en una CPU puede
afectar a la memoria usada por otra. Ya no puedes estar seguro de que
una variable que has establecido a un cierto valor en la l�nea anterior todav�a
tenga el mismo valor; la otra CPU quiz�s haya estado jugando con ella mientras no
mir�bamos. Obviamente, es imposible programar algo de esta manera.

En el caso de la programaci�n de procesos esto no suele ser un 
problema, porque un proceso normalmente s�lo se ejecutar� en
una CPU a la vez\footnote{La excepci�n son los procesos con hilos, que pueden
ejecutarse en varias CPUs a la vez.}. El n�cleo, sin embargo, podr�a ser
llamado por diferentes procesos ejecut�ndose en CPUs diferentes.

En la versi�n 2.0.x, esto no es un problema porque el n�cleo entero
est� en un gran ``spinlock''. Esto significa que si una CPU est� dentro del n�cleo
y otra CPU quiere entrar en �l, por ejemplo por una llamada al sistema, tiene
que esperar hasta que la primera CPU haya acabado. Esto es lo que hace al SMP en
Linux seguro\footnote{En el sentido de que es seguro usarlo con SMP}, pero 
terriblemente ineficiente.

En la versi�n 2.2.x, varias CPUs pueden estar dentro del n�cleo al mismo tiempo. Esto
es algo que los escritores de m�dulos tienen que tener en cuenta.

% Espero que alguien me d� acceso a un equipo SMP, as� que espero  %
% que la siguiente versi�n de este libro incluya m�s informaci�n.  % Esto se ha ca�do en ver 2.4. FVD

% Desgraciadamente, no tengo acceso a un equipo SMP para probar cosas, por lo
% tanto no puedo escribir un cap�tulo sobre c�mo hacerlo correctamente. Si 
% alguien tiene acceso a uno y est� deseoso de ayudarme, estar� agradecido. Si
% una compa��a me suministrara este acceso, les dar�a un p�rrafo gratis en
% el comienzo de este cap�tulo.


\chapter{Problemas comunes}\label{bad-ideas}

Antes de enviarte al mundo exterior y escribir m�dulos del n�cleo, hay algunas
cosas sobre las que te tengo que avisar. Si me equivoco al avisarte
y sucede algo malo, por favor env�ame el problema para que te devuelva
�ntegramente lo que me pagaron por tu copia del libro%
\index{pol�tica de devoluci�n}.

\begin{enumerate}

\item{\bf Usar bibliotecas est�ndar.} No puedes hacer esto. En un m�dulo
        del n�cleo s�lo puedes usar las funciones del n�cleo, que
        son las funciones que puedes ver en {\tt /proc/ksyms}%
\index{bibliotecas est�ndar}\index{est�ndar}\index{est�ndar!bibliotecas}%
\index{/proc/ksyms}\index{ksyms}\index{ksyms!fichero proc}.

\item{\bf Deshabilitar las interrupciones.} 
        Podr�as necesitar hacerlo por un momento y es
        correcto, pero si no las habilitas posteriormente, tu sistema se quedar�
        muerto y tendr�s que apagarlo%
\index{interrupci�n!deshabilitando}.

\item{\bf Meter tu cabeza dentro de la boca de un gran carn�voro.} Es algo que probablemente no
        tendr�a por qu� advertirte pero pens� que deb�a hacerlo de
        todas formas, por si acaso.

\end{enumerate}

\appendix

\chapter{Cambios entre 2.0 y 2.2}\label{ver-changes}%
\index{versiones!n�cleo}\index{2.2 cambios}

No conozco todo el n�cleo tan bien como para documentar todos los cambios.
En el transcurso de la conversi�n de los ejemplos (o m�s bien adaptando los cambios
de Emmanuel Papirakis) me encontr� con las siguientes diferencias. Las
relaciono aqu�, todas juntas, para ayudar a los programadores de m�dulos (especialmente aquellos
que aprendieron de versiones previas de este libro y que est�n m�s familiarizados
con las t�cnicas que utilizo) a convertirse a la nueva versi�n.

Un recurso adicional para la gente que quiera convertirse a 2.2 est� en
{\tt http://www.atnf.csiro.au/\verb'~'rgooch/linux/docs/porting-to-2.2.html}.


\begin{enumerate}

\item{\bf asm/uaccess.h} Si necesitas {\tt put\_user} o {\tt get\_user} 
        tienes que incluir (\#include) sus ficheros de cabeceras%
\index{asm/uaccess.h}\index{uaccess.h!asm}%
\index{get\_user}\index{put\_user}.

\item{\bf get\_user} En la versi�n 2.2, {\tt get\_user} recibe tanto el
        puntero a la memoria de usuario como la variable en la memoria
        del n�cleo para rellenarla con la informaci�n. El motivo por el 
        que esto es as� es que {\tt get\_user} ahora puede leer
        dos o cuatro bytes al mismo tiempo si la variable que 
        leemos es de una longitud de dos o cuatro bytes.

\item{\bf file\_operations} Esta estructura ahora tiene una funci�n de borrado
        entre las funciones {\tt open} y {\tt close}%
\index{flush}\index{file\_operations}\index{file\_operations!structure}.

\item{\bf close en file\_operations} En la versi�n 2.2, la funci�n 
        close devuelve un entero, por lo tanto se permite que falle%
\index{close}.

\item{\bf read y write en file\_operations} Las cabeceras de estas funciones
        han cambiado. Ahora devuelven {\tt ssize\_t} en vez de un entero,
        y su lista de par�metros es diferente. El inodo ya no es un par�metro,
        y en cambio s� lo es el desplazamiento dentro del fichero%
\index{read}\index{write}\index{ssize\_t}.

\item{\bf proc\_register\_dynamic} Esta funci�n ya no existe. En vez de ello, 
        llamas al {\tt proc\_register} normal y pones cero en el campo
        de inodo de la estructura%
\index{proc\_register\_dynamic}\index{proc\_register}.

\item{\bf Se�ales} Las se�ales en la estructura de tareas ya no son
        un entero de 32 bits, sino un array de enteros {\tt \_NSIG\_WORDS}%
\index{se�ales}\index{\_NSIG\_WORDS}.

\item{\bf queue\_task\_irq}  Incluso si quieres planificar una tarea para que
        suceda dentro de un manejador de interrupciones, usa {\tt queue\_task},
        no {\tt queue\_task\_irq}%
\index{queue\_task\_irq}\index{queue\_task}\index{interrupts}%
\index{irqs}.

\item{\bf Par�metros del M�dulo} Ya no hay que simplemente declarar los par�metros del
        m�dulo como variables globales. En 2.2 tienes que usar tambi�n {\tt MODULE\_PARM}
        para declarar su tipo. Esto es una gran mejora, porque permite que el m�dulo
        reciba par�metros de cadenas de caracteres que empiezan con un d�gito,
        por ejemplo, sin que esto le confunda%
\index{Par�metros}\index{Par�metros!M�dulo}\index{Par�metros de M�dulo}%
\index{MODULE\_PARM}.

\item{\bf Multiproceso sim�trico} El n�cleo ya no est� dentro de un
        solo ``spinlock'' grande, lo que significa que los m�dulos del n�cleo tienen
        que tener en cuenta el SMP%
\index{SMP}\index{Multiproceso sim�trico}.

\end{enumerate}



\chapter{�Desde aqu� hasta d�nde?}\label{where-to}

Podr�a haber introducido f�cilmente unos cuantos cap�tulos m�s en este
libro. Podr�a haber a�adido un cap�tulo sobre c�mo crear nuevos sistemas de
ficheros, o sobre c�mo a�adir nuevas pilas de protocolos (como si hubiera
necesidad de esto; tendr�as que excavar bajo tierra para
encontrar una pila de protocolos que no est�n soportados por Linux). Podr�a haber
a�adido explicaciones sobre los mecanismos del n�cleo que no hemos tocado,
tales como el arranque o la interfaz de discos.

Sin embargo, he escogido no hacerlo. Mi prop�sito al escribir
este libro era dar una iniciaci�n en los misterios de la
programaci�n de m�dulos del n�cleo y ense�ar las t�cnicas m�s comunes para
ese prop�sito. Para la gente seriamente interesada en la programaci�n
del n�cleo, recomiendo la lista de recursos del n�cleo de Juan-Mariano de Goyeneche que est� en
{\tt http://jungla.dit.upm.es/\verb'~'jmseyas/linux/kernel/hackers-docs.html}.
Tambi�n, como dijo Linus, la mejor forma de aprender el n�cleo es leer t� 
mismo el c�digo fuente.

Si est�s interesado en m�s ejemplos de m�dulos cortos del n�cleo, te
recomiendo la revista Phrack. Incluso si no est�s interesado en 
seguridad, y como programador deber�as estarlo, los m�dulos del n�cleo
son buenos ejemplos de lo que puedes hacer dentro del n�cleo, y son
lo bastante peque�os como para que su comprensi�n no requiera demasiado esfuerzo.

Espero haberte ayudado en tu misi�n de convertirte en un mejor programador, 
o al menos divertirte a trav�s de la tecnolog�a. Y, si escribes m�dulos
del n�cleo �tiles, espero que los publiques bajo la GPL, para que yo
tambi�n pueda utilizarlos.


\chapter{Beneficios y servicios}\label{ads}

Espero que a nadie le importen las presentes promociones descaradas. Todo son
cosas probablemente �tiles para los programadores noveles de
m�dulos del n�cleo Linux.
        
\section{Obteniendo este libro impreso}\label{print-book}

El grupo Coriolis va a imprimir este libro varias veces en el verano del 99. 
Si ya es verano, y quieres este libro impreso, puedes dejar descansar
a tu impresora y comprarlo encuadernado y reluciente.

include(thankme.m4)

include(gpl.m4)

\chapter{Sobre la traducci�n}

Este documento es la traducci�n de ``Linux Kernel Module Programing Guide 1.1.0''
y el proceso de traducci�n ha sido llevado a cabo por:
\begin{itemize}
\item Traductor: Rub�n Melc�n Fari�a \verb'<'melkon@terra.es\verb'>'
\item Revisor: �scar Sanz Lorenzo \verb'<'gaaldornik@terra.es\verb'>'
\item Encargado de Calidad: Francisco Javier Fern�ndez \verb'<'franciscojavier.fernandez.serrador@hispalinux.es\verb'>'
\item Traducci�n posterior: Francisco Vila \verb'<'francisco.vila@hispalinux.es\verb'>'
\end{itemize}


Documento publicado por el proyecto de documentaci�n de Linux ({\tldpes}).


N�mero de revisi�n: 0.15 (Agosto de 2003)


Si tienes comentarios y/o sugerencias sobre la traducci�n, ponte en 
contacto con Francisco Javier Fern�ndez \verb'<'franciscojavier.fernandez.serrador@hispalinux.es\verb'>'

\addcontentsline{toc}{chapter}{�ndice}
\input{progmodlinux.ind}
\end{document}
