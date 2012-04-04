<?xml version="1.0" encoding="iso-8859-1"?>

        <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
		<!-- este es un documento autogenerado, para cambios sobre la plantilla acudir a news.xsl -->
		<xsl:template match="noticias">
		<xsl:variable name="num_max" select="@num_max"/>
	
				<xsl:if test="1 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#21-12-03">21-12-03</a></b>:<br/>
					Publicada la versi�n 2.1 del libro <a href="http://es.tldp.org/Manuales-LuCAS/doc-unixsec">Seguridaden Unix y Redes</a> de Antonio Villal�n Huerta.
				</p>
				</xsl:if>
			
				<xsl:if test="2 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#16-12-03">16-12-03</a></b>:<br/>
					Actualizados a la versi�n 5.0 los libros <a href="http://es.tldp.org/Manuales-LuCAS/lfs-es">Linux From Scratch</a>y <a href="http://es.tldp.org/Manuales-LuCAS/blfs-es">M�s All� de Linux From Scratch</a>.Entre las novedades de esta versi�n de ambos libros cabe destacar: un nuevo m�todo de construcci�nque mejora el entorno de compilaci�n y su independencia sobre el sistema anfitri�n, ampliaci�n de lasexplicaciones para mejorar tus conocimientos sobre el S.O. GNU/Linux, actualizaci�n al n�cleo Linux 2.4.22, Glibc 2.3.2,GCC 3.3.1, cambio del gestor de arranque LiLo por Grub, creaci�n de un disquete de rescate completo ymejorado, instalaci�n de XFree68-4.3.0.1, XFCE-4.0.0, KDE-3.1.4, GNOME-2.2, OpenOffice-1.1.0, Mozilla-1.5,XMMS-1.2.7, MPlayer-1.0pre1, Xine-0.9.22, etc...La traducci�n de estos libros se lleva a cabo por el <a href="http://www.lfs-es.org">Proyecto LFS-ES</a>.
				</p>
				</xsl:if>
			
				<xsl:if test="3 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#16-12-03">16-12-03</a></b>:<br/>
					Publicadas las diapositivas de la presentaci�n del <a href="http://es.tldp.org/Presentaciones/200311jasl3/cherokee">Servidor Web Cherokee</a>realizada por Alvaro L�pez Ortega en las III Jornadas Andaluzas sobre Software Libre.
				</p>
				</xsl:if>
			
				<xsl:if test="4 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#15-12-03">15-12-03</a></b>:<br/>
					Publicado el <a href="http://es.tldp.org/Manuales-LuCAS/doc-curso-html">Curso completo de HTML</a>,escrito por Jorge Ferrer, V�ctor Garc�a y Rodrigo Garc�a. Este es un curso tremendamente completo,guiado y con ejemplos y pr�cticas pensadas para convertirlo en una gu�a did�ctica para aprender a hacerp�ginas web. No se requieren m�s que conocimientos b�sicos de inform�tica para llevarlo a cabo y secubren desde los aspectos m�s b�sicos de HTML hasta los m�s avanzados. Todo ello resaltando entodo momento las partes m�s importantes de este lenguaje y la mejor forma de emplearlo. Esperamosque lo disfrutes.
				</p>
				</xsl:if>
			
				<xsl:if test="5 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#15-12-03">15-12-03</a></b>:<br/>
					Publicadas dos presentaciones que se llevaron a cabo en el V Congreso de Hispalinux y que sehab�an quedado olvidadas:<a href="http://es.tldp.org/Presentaciones/200211hispalinux/gregorio">Ingenier�a del Software Libre</a>,por Gregorio Robles, y <a href="http://es.tldp.org/Presentaciones/200211hispalinux/gregorio2">Programaci�nExterna y Software Libre</a>, por Gregorio Robles y Jorge Ferrer.
				</p>
				</xsl:if>
			
				<xsl:if test="6 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#29-11-03">29-11-03</a></b>:<br/>
					Publicada la versi�n actualizada del <a href="http://es.tldp.org/Tutoriales/doc-guia-sendmail">Tutorial de Sendmail</a>,por Diego Bravo Estrada.
				</p>
				</xsl:if>
			
				<xsl:if test="7 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#29-11-03">29-11-03</a></b>:<br/>
					Publicado el documento <a href="http://es.tldp.org/Manuales-LuCAS/doc-gcc-inline">GCC Inline Assembly - C�mo</a>,por Martin Candurra (astor). En palabras del propio autor, "con este humilde art�culo espero facilitar la comprensi�n del Inline Assembly en Gcc".
				</p>
				</xsl:if>
			
				<xsl:if test="8 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#06-10-03">06-10-03</a></b>:<br/>
					Publicada la conferencia <a href="http://es.tldp.org/Presentaciones/200309hispalinux/01/hlx_SWL_PoliticasUE_20030923.pdf">Pol�ticasen la Uni�n Europea sobre software libre y de fuentes abiertas</a>, presentada por Miguel A. Amutio Gomez. Consejero T�cnico deNormas Tecnol�gicas del Ministero de Administraciones P�blicas durante el VI Congreso de Hispalinux.
				</p>
				</xsl:if>
			
				<xsl:if test="9 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#04-10-03">04-10-03</a></b>:<br/>
					Publicadas en la secci�n <a href="http://es.tldp.org/htmls/presentaciones.html">Congresos y Conferencias</a>las ponencias presentadas en el VI Congreso de Hispalinux.
				</p>
				</xsl:if>
			
				<xsl:if test="10 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#04-10-03">04-10-03</a></b>:<br/>
					Nueva actualizaci�n de <a href="http://es.tldp.org/Manuales-LuCAS/manual-openMosix-ES">El manual para el clustering con openMosix</a>,por Miquel Catal�n i Coilt. La versi�n 1.0b1 incluye, entre otras, estas novedades: un cap�tulo de instalaci�n de la mano de David Santo Orcero,correcciones y aclaraciones en todos los cap�tulos, profundizaci�n en los capitulos sobre teoria de la supercomputaci�n (primeros capitulos),un nuevo cap�tulo sobre el c�digo fuente del parche de openMosix y mejoras en la presentaci�n con las fancy headings y las txfonts.
				</p>
				</xsl:if>
			
				<xsl:if test="11 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#04-10-03">04-10-03</a></b>:<br/>
					Publicada la gu�a <a href="http://es.tldp.org/Manuales-LuCAS/doc-edicion-estructurada-emacs">Edici�n estructuradaen Emacs</a>, de Alejandro Imass y traducida por Sebasti�n Gurin (Cancerbero). �Una gu�a de novato a novato sobreDocBook y otros est�ndares SGML/XML haciendo hincapi� en el uso de la edici�n directa y estructurada utilizando Emacs.
				</p>
				</xsl:if>
			
				<xsl:if test="12 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#02-10-03">02-10-03</a></b>:<br/>
					Publicada la versi�n 0.2 del borrador de localizaci�n de interfaces de KDE/GNOME
				</p>
				</xsl:if>
			
				<xsl:if test="13 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#21-09-03">21-09-03</a></b>:<br/>
					El po de top�nimos desaparecer� para ser reemplazado por los c�digos iso est�ndar iso-3166, iso-639, iso-4217. Actualmente disponibles en un paquete Debian.
				</p>
				</xsl:if>
			
				<xsl:if test="14 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#17-09-03">17-09-03</a></b>:<br/>
					Publicadas las presentaciones de dos <a href="http://es.tldp.org/htmls/presentaciones.html">conferencias realizadas en la Euskal Party 11</a>:<a href="http://es.tldp.org/Presentaciones/200309euskal11/alo-euskal11-graficos/html">Desarrollo r�pido de videojuegos</a>,por Alvaro L�pez Ortega, y <a href="http://es.tldp.org/Presentaciones/200309euskal11/euskal11-reynaldo-cordero/html">Elsoftware libre en la Administraci�n</a>, por Reynaldo Cordero.
				</p>
				</xsl:if>
			
				<xsl:if test="15 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#07-09-03">07-09-03</a></b>:<br/>
					El glosario ha superado ya los 1000 registros y seguir� creciendo m�s lentamente a partir de ahora.Hay un <a href="http://cvs.hispalinux.es/cgi-bin/cvsweb/rl-po-compendia/calendario.ics">calendario</a> de trabajo disponible en el CVSdonde se encuentran las fases del proyecto.
				</p>
				</xsl:if>
			
				<xsl:if test="16 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#03-09-03">03-09-03</a></b>:<br/>
					El formato xml del glosario unificado ser� Term Base Exchange (TBX).Pod�is encontrar la especificaci�n en la p�gina web de <a href="http://lisa.org/tbx">Lisa</a> perteneciente al proyecto<a href="http://www.ttt.org/salt">SALT</a> (Standard-based Access service to multilingual Lexicons and Terminologies).
				</p>
				</xsl:if>
			
				<xsl:if test="17 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#28-08-03">28-08-03</a></b>:<br/>
					Publicada la versi�n revisada de la <a href="http://es.tldp.org/Manuales-LuCAS/doc-guia-usuario-ruby">Gu�a del usuario de Ruby</a>.
				</p>
				</xsl:if>
			
				<xsl:if test="18 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#28-08-03">28-08-03</a></b>:<br/>
					Publicada la versi�n 1.1.0 revisada de la <a href="http://es.tldp.org/Manuales-LuCAS/doc-progmodlinux">Gu�a de Programaci�n de M�dulos del N�cleo Linux</a>.
				</p>
				</xsl:if>
			
				<xsl:if test="19 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#19-08-03">19-08-03</a></b>:<br/>
					Publicado el primer borrador de la Gu�a de localizaci�n de GUIsDisponible en <a href="http://cvs.hispalinux.es/cgi-bin/cvsweb/rl-po-compendia/drafts/">CVS TLDP-ES</a>
				</p>
				</xsl:if>
			
				<xsl:if test="20 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#17-08-03">17-08-03</a></b>:<br/>
					Se inicia un proyecto de unificaci�n de criterios en la localizaci�n de las IGUs de KDE y GNOME.
				</p>
				</xsl:if>
			
				<xsl:if test="21 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#08-08-03">08-08-03</a></b>:<br/>
					Publicado el documento <a href="http://es.tldp.org/Manuales-LuCAS/doc-como-oracle-proc">Procesar Oracle en Debian Woody</a>,escrito por Guybrush Threepwood y revisado por Francisco F. Serrador. Este documento explica c�mohacer funcionar los precompiladores de C++ para Oracle en Debian Woody.
				</p>
				</xsl:if>
			
				<xsl:if test="22 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#06-08-03">06-08-03</a></b>:<br/>
					Publicados dentro de la secci�n <a href="http://es.tldp.org/htmls/presentaciones.html">Conferencias</a>los textos correspondientes al Curso Extraordinario: Herramientas en GNU/Linux para Estudiantes Universitarios (I)realizados por GLiSa - Asociaci�n GNU/Linux Salamanca.
				</p>
				</xsl:if>
			
				<xsl:if test="23 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#05-08-03">05-08-03</a></b>:<br/>
					Publicado el documento <a href="http://es.tldp.org/Manuales-LuCAS/doc-iptables-firewall">IPTABLES: Manual pr�ctico</a>,escrito por <a href="mailto:pello@pello.info">Pello Xabier Altadill Izura</a>, Ingeniero Inform�tico por la UPV-EHU.En este interesante manual se muestran las habituales arquitecturas de redes con firewally la forma de montar iptables para cada caso, con distintas opciones para cada ejemplo.
				</p>
				</xsl:if>
			
				<xsl:if test="24 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#26-07-03">26-07-03</a></b>:<br/>
					Publicada la versi�n revisada de la <a href="http://es.tldp.org/Manuales-LuCAS/doc-progmodlinux">Gu�a de Programaci�n de M�dulos del N�cleo Linux</a>, de Ori Pomerantz. Traducido porRub�n Melc�n Fari�a y revisado por �scar Sanz Lorenzo y Francisco Javier Fern�ndez.
				</p>
				</xsl:if>
			
				<xsl:if test="25 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#29-06-03">29-06-03</a></b>:<br/>
					Publicados los materiales del curso<a href="http://es.tldp.org/Tutoriales/doc-curso-cep-arroyo">GNU Linux para usuarios</a>,curso pr�ctico, pionero en el sistema educativo andaluz, de introducci�ndel profesorado a la filosof�a y la utilizaci�n did�ctica del software libre,impartido por Juan Rafael Fern�ndez Garc�a.
				</p>
				</xsl:if>
			
				<xsl:if test="26 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#20-05-03">20-05-03: M�s All� de Linux From Scratch</a></b>:<br/>Publicada la versi�n 1.0 del libro <a href="http://es.tldp.org/Manuales-LuCAS/blfs-es">M�s All� de Linux From Scratch</a>,
elaborado por <a href="http://beyond.linuxfromscratch.org/">The BLFS Development Team</a> y traducido por el <a href="http://www.escomposlinux.org/lfs-es">Proyecto LFS-ES</a>.
Este libro es una continuaci�n del LinuxFromScratch. Introduce y guia al lector a trav�s
de la ampliaci�n del sistema, incluyendo el entorno de red, soporte de las X, soporte
para sonido y soporte para impresoras y esc�neres.

</p>
				</xsl:if>
			
				<xsl:if test="27 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#16-05-03">16-05-03: C�mo configurar r�pidamente Cliente Nativo para PADRE en LiNUX</a></b>:<br/>Publicado el documento <a href="http://es.tldp.org/Manuales-LuCAS/padre-howto">C�mo configurar r�pidamente Cliente Nativo para PADRE en LiNUX</a>.
Se trata de un texto an�nimo publicado originalmente en Barrapunto y pasado a DocBook por
Juan Jose Amor Iglesias.

</p>
				</xsl:if>
			
				<xsl:if test="28 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#08-05-03">08-05-03: Gu�a r�pida de NewNAT</a></b>:<br/>Publicada la <a href="http://es.tldp.org/Manuales-LuCAS/guia-rapida-newnat">Gu�a r�pida de NewNAT</a>, escrita por <a href="mailto:christian@debian-potato.com.ar">Christian Conejero</a>.
Esta gu�a r�pida explica c�mo instalar y configurar Iptables con soporte H323.
Se basa en la distribuci�n Debian Sarge (testing). 

</p>
				</xsl:if>
			
				<xsl:if test="29 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#30-04-03">30-04-03: Linux From Scratch</a></b>:<br/>Publicada la versi�n 4.1 del libro <a href="http://es.tldp.org/Manuales-LuCAS/lfs-es">Linux From Scratch</a>, de <a href="http://www.linuxfromscratch.org">Gerard Beekmans</a>,
traducido por el <a href="http://www.escomposlinux.org/lfs-es">Proyecto LFS-ES</a>. En este libro se describe el proceso
para la creaci�n de un sistema Linux desde cero, usando solamente las fuentes
del software necesario para su construcci�n.

</p>
				</xsl:if>
			
				<xsl:if test="30 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#30-04-03">30-04-03: Desarrollo de Software Libre</a></b>:<br/>Publicadas las transparencias de la conferencia <a href="http://es.tldp.org/Presentaciones/0000otras/conf-desarrollo-software-libre/">Desarrollo de Software Libre</a>,
presentada por Alvaro L�pez Ortega en las Jornadas sobre Integraci�n en el Mercado Laboral de la Inform�tica
patrocinadas por la Consejer�a de educaci�n y ciencia de la Junta de Andalucia.

</p>
				</xsl:if>
			
				<xsl:if test="31 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#19-04-03">19-04-03: El manual para el clustering con openMosix</a></b>:<br/>Nueva actualizaci�n de <a href="http://es.tldp.org/Manuales-LuCAS/manual-openMosix-ES">El manual para el clustering con openMosix</a>. La versi�n 0.7
incluye una importante ampliaci�n de contenidos gracias a la abundante documentaci�n proporcionada por Carlos Manzanedo 
y Jordi Polo sobre generalidades de la supercomputaci�n (y un interesante tutorial sobre como montar un LVS).

</p>
				</xsl:if>
			
				<xsl:if test="32 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#16-04-03">16-04-03: Gu�a de Aprendizaje de Python</a></b>:<br/>Actualizada la <a href="http://es.tldp.org/Tutoriales/Python">Gu�a de Aprendizaje de Python</a> a la versi�n 2.0, algunas novedades: gesti�n de cadenas unicode, listas autodefinidas, asignaciones acumulativas, m�todos de caden
a.
Se contin�a trabajando para actualizar a la versi�n 2.3 .

</p>
				</xsl:if>
			
				<xsl:if test="33 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#13-04-03">13-04-03: Instalaci�n y Configuraci�n de un Cluster de Alta Disponibilidad bajo Linux</a></b>:<br/>Publicado un manual sobre la <a href="http://es.tldp.org/Manuales-LuCAS/doc-instalacion-cluster-alta-disponibilidad/">Instalaci�n y Configuraci�n de un Cluster de Alta Disponibilidad bajo Linux</a>
escrito por Rafael A. Garc�a Leiva, de la Universidad Aut�noma de Madrid.

</p>
				</xsl:if>
			
				<xsl:if test="34 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#03-04-03">03-04-03: Dise�o de Proyectos de software en c�digo abierto</a></b>:<br/>Publicado en la secci�n Tutoriales el documento <a href="http://es.tldp.org/Tutoriales/doc-dise�o-software">Dise�o de Proyectos de software en c�digo abierto</a>,
versi�n 1.1 de Noviembre del 2002. Este documento nace como consecuencia del proyecto de Gesti�n Libre 
bajo el auspicio de Hispalinux. El objetivo del mismo es dar unas reglas generales para el desarrollo de 
software en el mundo del c�digo abierto (open-source). Escrito por <a href="mailto:josemanuel.godoy@hispalinux.es">Jos� Manuel Godoy Gim�nez</a>.

</p>
				</xsl:if>
			
				<xsl:if test="35 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#26-03-03">26-03-03: Sirviendo web desde la escuela</a></b>:<br/>Publicado en la secci�n Tutoriales el documento <a href="http://es.tldp.org/Tutoriales/doc-servir-web-escuela">Sirviendo web desde la escuela</a>,
una peque�a gu�a que permite a cualquier centro educativo, conectado a la red Internet mediante ADSL,
servir sus p�ginas web desde una m�quina local. Escrito por <a href="mailto:saorin@teleline.es">Antonio Saor�n</a>, 
<a href="mailto:josejuan.grimaldos@hispalinux.es">Jos� J. Grimaldos</a>, <a href="mailto:ginees@larural.es">Gin�s �ngel Esteban</a>, <a href="mailto:jamorgadoes@yahoo.es">Jos� Antonio Morgado</a>, Mar�a del Mar Lera, 
Jos� Luis L�pez-Barajas y Sara Redondo.

</p>
				</xsl:if>
			
				<xsl:if test="36 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#22-03-03">22-03-03: Tutorial de PERL</a></b>:<br/>Actualizado el <a href="http://es.tldp.org/Tutoriales/PERL/">Tutorial de PERL</a>, por J. Juli�n Merelo.

</p>
				</xsl:if>
			
				<xsl:if test="37 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#22-03-03">22-03-03: Transparencias de la charla sobre Python y Gnome presentada en la GUADEC 3 de 2002</a></b>:<br/>Publicadas las <a href="http://es.tldp.org/Presentaciones/0000otras/conf-gaudec3/GUADEC3-python_en_GNOME-alo">Transparencias de la charla sobre Python y Gnome presentada en la GUADEC 3 de 2002</a>
y las <a href="http://es.tldp.org/Presentaciones/0000otras/conf-adala-2002/ADALA-Desarrollo_de_videojuegos-alo">Transparencias de la charla sobre Desarrollo de Videojuegos presentada en ADALA 2002</a>,
realizadas ambas por Alvaro Lopez Ortega.

</p>
				</xsl:if>
			
				<xsl:if test="38 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#20-03-03">20-03-03: El manual para el clustering con openMosix</a></b>:<br/>Actualizado <a href="http://es.tldp.org/Manuales-LuCAS/manual-openMosix-ES">El manual para el clustering con openMosix</a>,
de <a href="http://como.akamc2.net">Miquel Catal�n i Co�t</a> a la versi�n 0.6beta.

</p>
				</xsl:if>
			
				<xsl:if test="39 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#17-02-03">17-02-03:  Aprendiendo a Aprender Linux: Gu�as para colegios con plataforma de referencia S-Helio 1.1</a></b>:<br/>Publicada la gu�a <a href="http://es.tldp.org/Manuales-LuCAS/AA_Linux_colegio-1.1/"> Aprendiendo a Aprender Linux: Gu�as para colegios con plataforma de referencia S-Helio 1.1</a>,
por Vladimir T�mara, Jaime Irving D�vila, Pablo Chamorro e Igor T�mara. Es una gu�a de dominio
p�blico que documenta un dise�o de red ampliamente probado,  apropiado para colegios colombianos 
y basado en software de libre redistribuci�n.  Cada computador de la red Ethernet no conectada a 
Internet es un sistema autonomo basado en Debian 2.2 con informaci�n distribuida v�a NFS y NIS;  
con los servicios t�picos de una Intranet (DNS, finger, talk, correo electr�nico, ftp, web, ssh, CVS) y 
con programas apropiados para estudiantes, profesores y administradores de red.
El contenido y la organizaci�n busca facilitar su uso entre estudiantes, profesores y personal 
administrtivo del colegio donde se instale, o pueden tambi�n emplearse como gu�a de autoestudio 
o de referencia.

</p>
				</xsl:if>
			
				<xsl:if test="40 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#13-02-03">13-02-03: Seguridad inform�tica y software libre</a></b>:<br/>Publicado un nuevo informe sobre <a href="http://es.tldp.org/Informes/informe-seguridad-SL">Seguridad inform�tica y software libre</a>,
esrito por Jorge Ferrer y Javier Fern�ndez-Sanguino.

</p>
				</xsl:if>
			
				<xsl:if test="41 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#06-02-2003">06-02-2003: Lucas Desarrollo (I+D)</a></b>:<br/>Publicado en la secci�n <a href="http://es.tldp.org/htmls/lucas-desarrollo.html">Lucas Desarrollo (I+D)</a> el documento
<b>Introducci�n a la tecnolog�a Donantonio</b>, complemento a las Especificaciones de Donantonio.

</p>
				</xsl:if>
			
				<xsl:if test="42 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#02-02-2003">02-02-2003: bibliotecario-e</a></b>:<br/>Se ha puesto en marcha el desarrollo del <a href="http://cvs.hispalinux.es/cgi-bin/cvsweb/bibliotecario-e/">bibliotecario-e</a>, una aplicaci�n para la creaci�n, manteniniento y 
consulta de las fichas bibliogr�ficas de los proyectos de documentaci�n y textos publicados por el TLDP 
y otras entidades. Su desarrollo se enmarca dentro de las especificaciones del sistema bibliogr�fico de 
publicaci�n distribuida autom�tica <a href="http://es.tldp.org/htmls/lucas-desarrollo.html">Donantonio</a> y de los trabajos del W3C para el desarrollo de la Web Sem�ntica.

</p>
				</xsl:if>
			
				<xsl:if test="43 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#02-02-2003">02-02-2003: Un paseo detallado por la instalaci�n de Debian 3.0</a></b>:<br/>Publicado el art�culo <a href="http://es.tldp.org/Manuales-LuCAS/doc-instalacion-debian-3.0">Un paseo detallado por la instalaci�n de Debian 3.0</a>,
de Clinton De Young. Traducido y comentado por Luis Lima. Este documento est� especialmente dirigido a los novatos.

</p>
				</xsl:if>
			
				<xsl:if test="44 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#26-01-2003">26-01-2003: Experiencias con Linux Red Hat 6.2</a></b>:<br/>Publicado un texto dirigido a los novatos sobre <a href="http://es.tldp.org/Manuales-LuCAS/experiencias-instalando-RedHat-6.2">Experiencias con Linux Red Hat 6.2</a>,
escrito por Antonio Regidor.

</p>
				</xsl:if>
			
				<xsl:if test="45 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#26-01-2003">26-01-2003: Instalaci�n de un sistema Debian chroot</a></b>:<br/>Publicado el documento <a href="http://es.tldp.org/Manuales-LuCAS/doc-como-debian-chroot">Instalaci�n de un sistema Debian chroot</a>,
de Colin Walters y traducido por Javier Linares S�nchez y Te�filo Ruiz Su�rez.

</p>
				</xsl:if>
			
				<xsl:if test="46 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#26-12-2002">26-12-2002: Proposici�n de Ley del Grupo Parlamentario Mixto sobre Software Libre</a></b>:<br/>Publicada la <a href="http://es.tldp.org/Informes/proyecto-ley">Proposici�n de Ley del Grupo Parlamentario Mixto sobre Software Libre</a>,
n�mero de expediente 122/000217, con el se�or Puigcercr�s i Buixassa como ponente.

</p>
				</xsl:if>
			
				<xsl:if test="47 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#16-12-2002">16-12-2002: El manual para el clustering con openMosix</a></b>:<br/>Publicada la versi�n BETA del <a href="http://es.tldp.org/Manuales-LuCAS/manual-openMosix-ES">El manual para el clustering con openMosix</a>,
por <a href="http://como.akamc2.net">Miquel Catal�n i Co�t</a>. Inspirado en el HOWTO de Kris Buytaert.

</p>
				</xsl:if>
			
				<xsl:if test="48 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#14-12-2002">14-12-2002: Desarrollo de C�digo Abierto con CVS</a></b>:<br/>Publicada la versi�n BETA de libro <a href="http://es.tldp.org/Manuales-LuCAS/doc-cvsbook-es">Desarrollo de C�digo Abierto con CVS</a>, conocido tambi�n
como el CVSBook, de Karl Fogel. Se necesitan colaboradores para terminar la traducci�n y hacer la revisi�n de los textos.

</p>
				</xsl:if>
			
				<xsl:if test="49 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#07-12-2002">07-12-2002: migraci�n
desde Microsoft Windows a UNIX/Linux</a></b>:<br/>Actualizado y migrado a DocBook-XML el libro blanco dirigido a los departamentos de TI acerca
de las razones para una <a href="http://es.tldp.org/Informes/conf-MigraNT2GNU">migraci�n
desde Microsoft Windows a UNIX/Linux</a>, de Jon C. LeBlanc.

</p>
				</xsl:if>
			
				<xsl:if test="50 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#05-12-2002">05-12-2002: Lucas Desarrollo (I+D)</a></b>:<br/>Publicado dentro de la secci�n <a href="http://es.tldp.org/htmls/lucas-desarrollo.html">Lucas Desarrollo (I+D)</a> las especificaciones sobre requisitos de
software para Donantonio, el sistema bibliogr�fico de publicaci�n distribuida autom�tica.

</p>
				</xsl:if>
			
				<xsl:if test="51 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#03-12-2002">03-12-2002: Accesos a Dispositivos Independientes del Bus</a></b>:<br/>Publicados dos nuevos documentos traducidos por Rub�n Melc�n:
<a href="http://es.tldp.org/Manuales-LuCAS/doc-manual-linux-acceso-dispositivos">Accesos a Dispositivos Independientes del Bus</a> de Matthew Wilcox y
<a href="http://es.tldp.org/Manuales-LuCAS/doc-manual-linux-procfs">Gu�a del Procfs del N�cleo Linux</a> de Erik (J.A.K.) Mouw.

</p>
				</xsl:if>
			
				<xsl:if test="52 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#23-11-2002">23-11-2002: Tutorial de PHP y MySQL</a></b>:<br/>Publicado el <a href="http://es.tldp.org/Manuales-LuCAS/manual_PHP">Tutorial de PHP y MySQL</a> de Jos� Antonio Rodr�guez.

</p>
				</xsl:if>
			
				<xsl:if test="53 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#17-11-2002">17-11-2002: Informes</a></b>:<br/>Inaugurada la secci�n de <a href="http://es.tldp.org/htmls/Informes.html">Informes</a> con el documento
<a href="http://es.tldp.org/Informes/doc-informe-ctp-linux-en-la-empresa">El costo total de propiedad de GNU/Linux en la empresa</a>.

</p>
				</xsl:if>
			
				<xsl:if test="54 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#16-11-2002">16-11-2002: Conferencias</a></b>:<br/>Publicadas en la secci�n de <a href="http://es.tldp.org/htmls/presentaciones.html">Conferencias</a> las
ponencias presentadas en el <b>V Congreso de Hispalinux</b>.


</p>
				</xsl:if>
			
				<xsl:if test="55 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#12-11-2002">12-11-2002: Gu�a del usuario de WindowMaker</a></b>:<br/>Publicada la versi�n migrada a DocBook-XML de la
<a href="http://es.tldp.org/Manuales-LuCAS/doc-windowmaker">Gu�a del usuario de WindowMaker</a>

</p>
				</xsl:if>
			
				<xsl:if test="56 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#09-11-2002">09-11-2002: Usando Samba</a></b>:<br/>Publicada la nueva versi�n del manual <a
href="http://es.tldp.org/Manuales-LuCAS/USANDO-SAMBA">Usando Samba</a>
</p>
<p>
Publicada una versi�n revisada del manual <a
href="http://es.tldp.org/Manuales-LuCAS/INTERCONEXION-IRDA">Interconexi�n IRDA con GNU/Linux</a>

</p>
				</xsl:if>
			
				<xsl:if test="57 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#08-11-2002">08-11-2002: migraci�n
desde Windows NT a GNU/Linux</a></b>:<br/>Publicada una presentaci�n orientada a los departamentos de TI acerca
de las razones para una <a
href="http://es.tldp.org/Manuales-LuCAS/conf-MigraNT2GNU">migraci�n
desde Windows NT a GNU/Linux</a>.

</p>
				</xsl:if>
			
				<xsl:if test="58 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#31-10-2002">31-10-2002: Dentro del N�cleo Linux 2.4</a></b>:<br/>Revisado y publicado el documento <a href="http://es.tldp.org/Manuales-LuCAS/DENTRO-NUCLEO-LINUX/">Dentro del N�cleo Linux 2.4</a>

</p>
				</xsl:if>
			
				<xsl:if test="59 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#30-10-2002">30-10-2002: secci�n de Manuales</a></b>:<br/>Nueva revisi�n de la Gu�a de Redes (GARL2), <B>por fin traducida al 100%</B>.
Muchas gracias a todos por vuestra ayuda, sin la que este libro de
casi 500 p�ginas no hubiera sido posible. La gu�a est� disponible en 
varios formatos en la <a href="http://lucas.hispalinux.es/htmls/manuales.html">secci�n de Manuales</a>.

</p>
				</xsl:if>
			
				<xsl:if test="60 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#24-10-2002">24-10-2002: Manuales</a></b>:<br/>Publicada la Gu�a de Programaci�n de M�dulos del N�cleo Linux de Ori Pomerantz, traducci�n de Rub�n Melc�n en la secci�n de <a href="http://lucas.hispalinux.es/Manuales-LuCAS/PROGMODLINUX/html">Manuales</a>. Tambi�n est�n publ
icados varios traducciones de Rub�n Melc�n sobre diferentes aspectos del Kernel en la secci�n de <a href="http://lucas.hispalinux.es/htmls/manuales.html">Manuales</a>.

</p>
				</xsl:if>
			
				<xsl:if test="61 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#23-10-2002">23-10-2002: Tutoriales</a></b>:<br/>Publicado Modelado de Sistemas com UML, traducido por Ricardo Cervera. Disponible en la secci�n <a href="http://lucas.hispalinux.es/Tutoriales/doc-modelado-sistemas-UML/multiple-html">Tutoriales</a>  

</p>
				</xsl:if>
			
				<xsl:if test="62 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#21-10-2002">21-10-2002: Gu�a de
usuario de WindowMaker</a></b>:<br/>Publicada la segunda revisi�n de la <a
href="http://es.tldp.org/Manuales-LuCAS/doc-windowmaker">Gu�a de
usuario de WindowMaker</a> traducida por Daniel Guerrero Ca�ongo.
</p>
<p>
Publicada la beta2 de la LIPP v2.0 <a
href="http://es.tldp.org/Manuales-LuCAS/LIPP2">LIPP v2.0 beta2</a>.
</p>
<p>
Publicada la gu�a de <a
href="http://lucas.hispalinux.es/Tutoriales/APACHE-COCOON-2/multiple-html/">Apache-Cocoon</a>.

</p>
				</xsl:if>
			
				<xsl:if test="63 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#26-09-2002">26-09-2002: LIPP-2.0 beta</a></b>:<br/>
Ya est� publicada la <a href="http://es.tldp.org/Manuales-LuCAS/LIPP2">LIPP-2.0 beta</a>,
Linux Instalaci�n y Primeros Pasos, as� que �a disfrutarla!

</p>
				</xsl:if>
			
				<xsl:if test="64 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#23-09-2002">23-09-2002: Pedro Reina</a></b>:<br/>
Hemos publicado un par de conferencias de <a
href="http://pedroreina.org">Pedro Reina</a> sobre <a href="http://lucas.hispalinux.es/Presentaciones/0000otras/conf-preina1/html/">Software Libre en la
ense�anza secundaria</a> y <a href="http://lucas.hispalinux.es/Presentaciones/0000otras/conf-preina2/html/">Linux en la educaci�n</a>. 


</p>
				</xsl:if>
			
				<xsl:if test="65 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#16-09-2002">16-09-2002: Eurociber/Banesto</a></b>:<br/>
Desde hace unas horas, TLDP-ES corre en un nuevo servidor dedicado,
cuya conectividad es patrocinada por
<a href="http://www.eurociber.es/">Eurociber/Banesto</a>. Notar�is
mejoras inmediatamente: de momento, ya tenemos 2 Mbps de ancho de banda :-)
</p>
				</xsl:if>
			
				<xsl:if test="66 &lt;= $num_max or $num_max=-1">
			<p><b><a href="">1-08-2002: </a></b>:<br/>
Nueva versi�n de la �<a href="http://es.tldp.org/Tutoriales/GUIA_TRIPWIRE">Gu�a de Tripwire</a>� de Diego Bravo Estrada.
</p>
<p>
Publicamos las �<a href="http://es.tldp.org/Tutoriales/doc-tutorial-recomendaciones-seguridad">Recomendaciones de seguridad en sistemas distribuidos de
c�mputo</a>�, tambi�n de Diego Bravo Estrada.
</p>
<p>
Publicamos la versi�n preliminar del art�culo �<a href="http://es.tldp.org/Articulos/0000otras/doc-traduccion-libre">La Traducci�n en el mundo del
Software Libre</a>�, de Juan Rafael Fern�ndez Garc�a.
</p>
<p>
Publicamos la �<a href="http://es.tldp.org/Manuales-LuCAS/doc-windowmaker">Gu�a de usuario de Windowmaker</a>�, traducida por Daniel
Guerrero Ca�ongo.
</p>
<p>
Ya est� disponible la versi�n 2.1 de �<a href="http://es.tldp.org/Manuales-LuCAS/SEGUNIX/">Seguridad en Unix</a>�, de Antonio
Villal�n. Es una peque�a revisi�n de la reciente 2.1
</p>
				</xsl:if>
			
				<xsl:if test="67 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#29-07-2002">29-07-2002: http://es.tldp.org/htmls/quienes.html</a></b>:<br/>
El equipo de coordinaci�n se ha renovado. Esto no es m�s que el principio de
un maravilloso cambio :)
Puedes conocer qui�n es qui�n en <a href="http://es.tldp.org/htmls/quienes.html">http://es.tldp.org/htmls/quienes.html</a>

</p>
				</xsl:if>
			
				<xsl:if test="68 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#25-07-2002">25-07-2002: Proyecto Rhodas</a></b>:<br/>
Para una mejor clasificaci�n documental hemos habilitado una secci�n
dedicada a art�culos y comunicaciones t�cnicas. Disponible en la secci�n
<b>Art�culos</b>.
</p>
<p>
Publicamos un art�culo sobre el <a href="http://es.tldp.org/Articulos/0000otras/doc-proyecto-rhodas/">Proyecto Rhodas</a>, el esfuerzo del Ministerio
de Administraciones P�blicas de Espa�a para substituir plataformas
propietarias por software libre.

</p>
				</xsl:if>
			
				<xsl:if test="69 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#09-07-2002">09-07-2002: TLDP-ES</a></b>:<br/>
El proyecto anteriormente conocido como <b>LuCAS</b> ya no es <b>LuCAS</b>, sino <a href="http://es.tldp.org">TLDP-ES</a>.
Estamos en�rmemente satisfechos de formar parte oficilamente del <a href="http://tldp.org">TLDP</a>, el
grupo m�s importante en desarrollo y publicaci�n de software libre.
Confiamos tambi�n en que la reuni�n que est�n celebrando buena parte de sus
coordinadores en el congreso <a href="http://lsm.abul.org">LSM</a> tenga grandes frutos en el futuro inmediato.

</p>
				</xsl:if>
			
				<xsl:if test="70 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#26-06-2002">26-06-2002: jEdit</a></b>:<br/>
Jairo Mart�nez contribuye con un tutorial sobre como hacer plugins en <a href="http://jedit.org">jEdit</a>
un editor de texto libre escrito en Java. Disponible en la secci�n de
<a href="http://lucas.hispalinux.es/Tutoriales/PROG_PLUGIN_JEDIT/html/">tutoriales</a>.

</p>
				</xsl:if>
			
				<xsl:if test="71 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#25-06-2002">25-06-2002: manuales</a></b>:<br/>
Publicamos otro interesant�simo manual de seguridad en red: An�lisis de
seguridad de la familia de protocolos TCP/IP y sus servicios
asociados. 1� edici�n. Gracias a su autor Ra�l Siles Pel�ez. Como siempre,
disponible en la secci�n de <a href="http://lucas.hispalinux.es/htmls/manuales.html">manuales</a>.

</p>
				</xsl:if>
			
				<xsl:if test="72 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#17-06-2002">17-06-2002:  enlace </a></b>:<br/>
Publicamos una presentaci�n sobre Docbook, disponible en este  <a href="http://lucas.hispalinux.es/Presentaciones/0000otras/conf-jdavila1/html"> enlace </a>

</p>
				</xsl:if>
			
				<xsl:if test="73 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#12-06-2002">12-06-2002: configuraci�n de redes locales conectadas a
a internet</a></b>:<br/>
Publicamos un manual sobre <a href="http://lucas.hispalinux.es/Manuales-LuCAS/doc-red-local-inet/doc-red-local-inet-html/">configuraci�n de redes locales conectadas a
a internet</a> traducido por Juanjo Mar�n. �Gracias Juanjo!

</p>
				</xsl:if>
			
				<xsl:if test="74 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#11-06-2002">11-06-2002:  problema de la
exclusi�n digital y c�mo evitarla gracias a Internet y al software libre</a></b>:<br/>
Publicamos la conferencia de Marcelo Branco sobre el <a href="http://lucas.hispalinux.es/Presentaciones/0000otras/conf-branco/"> problema de la
exclusi�n digital y c�mo evitarla gracias a Internet y al software libre</a>.

</p>
				</xsl:if>
			
				<xsl:if test="75 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#22-05-2002">22-05-2002: </a></b>:<br/>
Publicamos en la secci�n de Manuales, la nueva edici�n de la estupenda
Gu�a de Seguridad en Unix, de Antonio Villal�n Huerta. Imprescindible
junto con la Gu�a de Redes 2.0, recientemente publicada, para el administrador
de sistemas preocupado por la seguridad.

</p>
				</xsl:if>
			
				<xsl:if test="76 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#25-04-2002">25-04-2002: enlace</a></b>:<br/>
Jaime Irving D�vila ha escrito una nueva versi�n del Tutorial de Docbook: Un enfoque integrado y
a trav�s de ejemplos.. Disponible en este <a href="http://abadon.uniandes.edu.co/doctut">enlace</a>.

5-03-2002

Vicente D. Fern�ndez (Quasar) contribuye con completo manual de
�Interconexi�n IrDA con Linux� para dispositivos m�viles. Disponible en la 
<a href="http://lucas.hispalinux.es/Manuales-LuCAS/INTERCONEXION-IRDA/" >secci�n de manuales</a>.

3-03-2002

Paco Gonz�lez contribuye con su traducci�n de la �Gu�a de usuario de Ruby�.
Disponible en la secci�n de manuales.

2-03-2002

Rub�n Melc�n se supera a s� mismo y acaba de contribuir con �Dentro del
n�cleo Linux 2.4�, la traducci�n de �Linux Kernel 2.4 Internals�. Este
documento tambi�n necesita de un revisor.

1-03-2002

Rub�n Melc�n acaba de concluir la traducci�n de la Gu�a de Programaci�n de
M�dulos del N�cleo Linux�, traducci�n de �Linux Kernel Module Programming
Guide�. Esta gu�a necesita de un revisor �voluntarios?

</p>
				</xsl:if>
			
				<xsl:if test="77 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#28-02-2002">28-02-2002: correo-e</a></b>:<br/>
Publicamos la primera Beta de la Gu�a de Redes 2.0, un excelente documento
sobre redes de m�s de 500 p�ginas. El documento a�n debe ser completado
y revisado en su totalidad. Ponte en contacto con Juan Jos� Amor,
el coordinador, para m�s informaci�n (<a href="mailto:juanjo.amor@hispalinux.es">correo-e</a>).

</p>
				</xsl:if>
			
				<xsl:if test="78 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#21-02-2002">21-02-2002</a></b>:<br/>
Publicado el material disponible del evento de Rosario 2000 y del de
Montevideo 2001. Disponible en la secci�n de Conferencias. Disculpas por el
retraso O:-)
</p>
				</xsl:if>
			
				<xsl:if test="79 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#7-02-2002">7-02-2002: IRC</a></b>:<br/>
Hemos creado un canal <a href="http://lucas.hispalinux.es/htmls/irc.html">IRC</a> para que los voluntarios puedan encontrarse y
resolver en tiempo real sus consultas. �Disfrutadlo!
			</p>
				</xsl:if>
			
				<xsl:if test="80 &lt;= $num_max or $num_max=-1">
			<p><b><a href="">6-02-2002</a></b>:<br/>
Se ha transformado completamente la <a href="http://lucas.hispalinux.es/htmls/participar.html">secci�n de participaci�n</a> a�adiendo dos
documentos nuevos y referencias a todo el material que puede necesitar el
activista.
</p>
				</xsl:if>
			
				<xsl:if test="81 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#5-02-2002">5-02-2002</a></b>:<br/>
Bob Stayton ha organizado secretamente un homenaje a <a href="http://www.nwalsh.com">Norman Walsh</a> quien es
probablemente la persona clave en el movimiento de estructuraci�n
de documentaci�n libre gracias a sus trabajos con Docbook:
<br/>
<a href="http://lists.oasis-open.org/archives/docbook/200202/msg00007.html">http://lists.oasis-open.org/archives/docbook/200202/msg00007.html</a>
</p>
<p>
Se incorpora a la red de r�plicas la de nuestros amigos del Grupo de
Usuarios Linux del Uruguay (UYLUG).
</p>
<p>
Antonio Rueda ha traducido �Una Breve Historia del 'Hackerismo'�, de Eric S.
Raymond. Disponible en la secci�n Otros.
</p>
				</xsl:if>
			
				<xsl:if test="82 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#4-02-2002">4-02-2002</a></b>:<br/>
Diego Bravo Estrada contribuye con tres breves tutoriales originales sobre
Sendmail, Qmail y Tripwire. Disponibles en la secci�n de Tutoriales.
</p>
<p>
Sebasti�n Gurin ha traducido el tutorial �Programaci�n B�sica de Sockets en
Unix para Novatos� que est� disponible en la secci�n de Tutoriales.
</p>
<p>
Publicamos el plan de trabajo del proyecto en <a href="http://lucas.hispalinux.es/htmls/plan.html">http://lucas.hispalinux.es/htmls/plan.html</a>.
</p>
				</xsl:if>
			
				<xsl:if test="83 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#25-01-2002">25-01-2002: Bugzilla</a></b>:<br/>
Se ha puesto en marcha un servidor <a href="http://bugzilla.hispalinux.es">Bugzilla</a> en Hispalinux que ya estamos
usando para satisfacer las necesidades de organizaci�n de LuCAS. Tambi�n
hemos preparado un <a href="http://www.olea.org/como-empezar-bugzilla">documento de introducci�n</a> a su uso.
</p>
<p>
Ha cambiado el servidor CVS usado en LuCAS. Ahora est� alojado en <a href="http://rp.hispalinux.es">Reypastor</a>,
que es la nueva m�quina de <a href="http://www.hispalinux.es">Hispalinux</a>. No hay cambios de configuraci�n as�
que pod�is seguir disfrutando.

</p>
				</xsl:if>
			
				<xsl:if test="84 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#23-12-2001">23-12-2001: </a></b>:<br/>
Publicado un tutorial de Ada y Glade escrito por �lvaro L�pez Ortega.

</p>
				</xsl:if>
			
				<xsl:if test="85 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#19-12-2001">19-12-2001: servicio de consultas al Diccionario RAE</a></b>:<br/>
El <a href="http://buscon.rae.es/drae/drae.htm">servicio de consultas al Diccionario RAE</a> vuelve a estar operativo,
esta vez a la 22� edici�n.

</p>
				</xsl:if>
			
				<xsl:if test="86 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#13-12-2001">13-12-2001: tutoriales</a></b>:<br/>
Publicada la versi�n PDF del TutorialLinux, disponible en la secci�n
de <a href="http://lucas.hispalinux.es/htmls/tutoriales.html">tutoriales</a>.
</p>
				</xsl:if>
			
				<xsl:if test="87 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#1-12-2001">1-12-2001</a></b>:<br/>
Publicados los art�culos del IV Congreso Hispalinux. Disponibles en
la secci�n de <a href="http://lucas.hispalinux.es/htmls/presentaciones.html">Conferencias</a>.
</p>
				</xsl:if>
			
				<xsl:if test="88 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#17-10-2001">17-10-2001: Proyecto SOBL</a></b>:<br/>
Publicamos la traducci�n del libro <em>Using Samba</em> que ha sido traducido
por el <a href="http://www.sobl.org">Proyecto SOBL</a>.
Lo podr�is encontrar en la <a href="http://lucas.hispalinux.es/htmls/manuales.html">secci�n de manuales</a>.

</p>
				</xsl:if>
			
				<xsl:if test="89 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#07-10-2001">07-10-2001: secci�n
de Tutoriales</a></b>:<br/>
Publicamos un fenomenal tutorial de Docbook. Lo pod�is encontrar
en la <a href="http://lucas.hispalinux.es/htmls/tutoriales.html">secci�n
de Tutoriales</a>.

</p>
				</xsl:if>
			
				<xsl:if test="90 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#26-09-2001">26-09-2001: Est�ndares</a></b>:<br/> 
Nuevos RFC en castellano en la secci�n <a href="http://lucas.hispalinux.es/htmls/estandares.html">Est�ndares</a>:<br/>
<a href="http://www.rfc-es.org/rfc/rfc0854-es.txt">RFC0854-ES -
<b>Especificaci�n del protocolo Telnet</b></a>
<br/>
<a href="http://www.rfc-es.org/rfc/rfc0856-es.txt">RFC0856-ES -
<b>Transmisi�n binaria en Telnet</b></a>
<br/>
<a href="http://www.rfc-es.org/rfc/rfc2045-es.txt">RFC2045-ES -
<b>MIME Primera Parte: Formato del Cuerpo de los Mensajes Internet</b></a>
<br/>
<a href="http://www.rfc-es.org/rfc/rfc2046-es.txt">RFC2046-ES -
<b>MIME Segunda Parte: Tipos de Contenido</b></a>
<br/>
<a href="http://www.rfc-es.org/rfc/rfc2119-es.txt">RFC2119-ES -
<b>Palabras clave a utilizar en RFC para Indicar Niveles de Requerimiento</b></a> (BORRADOR)

</p>
				</xsl:if>
			
				<xsl:if test="91 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#06-08-2001">06-08-2001: lista de correo en espa�ol</a></b>:<br/>
Se ha creado una <a href="http://listas.hispalinux.es/mailman/listinfo/docbook-ayuda">lista de correo en espa�ol</a> de apoyo a los usuarios
noveles de docbook.

</p>
				</xsl:if>
			
				<xsl:if test="92 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#02-08-2001">02-08-2001: petici�n de art�culos</a></b>:<br/>
Est� abierta la <a href="http://congreso.hispalinux.es/actividades/ponencias/">petici�n de art�culos</a> del IV Congreso Hispalinux. Y
t� puedes participar :-)

</p>
				</xsl:if>
			
				<xsl:if test="93 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#17-07-2001">17-07-2001: Congreso de Manizales de Mayo 2001</a></b>:<br/>
Publicadas las presentaciones del <a href="http://linuxcol.uniandes.edu.co/linuxcol/conferencias/conferencias.html">Congreso de Manizales de Mayo 2001</a> en la seccion de <a href="http://lucas.hispalinux.es/htmls/presentaciones.html">Co
nferencias</a>.
</p>
<p>
Publicadas otras conferencias impartidas por J. E. Gomez de <a href="http://linuxcol.uniandes.edu.co/">LinuxCol</a>, en la seccion de <a href="http://lucas.hispalinux.es/htmls/presentaciones.html">Conferencias</a>.
</p>
				</xsl:if>
			
				<xsl:if test="94 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#26-06-2001">26-06-2001: Est�ndares</a></b>:<br/> 
Nuevos RFC en castellano en la secci�n <a href="http://lucas.hispalinux.es/htmls/estandares.html">Est�ndares</a>:<br/>
<a href="http://www.rfc-es.org/rfc/rfc0919-es.txt">RFC0919-ES -
Difusi�n de Datagramas de Internet</a><br/>
<a href="http://www.rfc-es.org/rfc/rfc2060-es.txt">RFC2060-ES - Protocolo IMAP - Versi�n 4rev1</a>

</p>
				</xsl:if>
			
				<xsl:if test="95 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#20-06-2001">20-06-2001: visita esta
p�gina</a></b>:<br/>
Se presenta nuevo proyecto de traducci�n: la nueva Gu�a de Redes de Olaf
Kirch. Para m�s informaci�n, <a href="http://garl2.dramor.net/">visita esta
p�gina</a>.

</p>
				</xsl:if>
			
				<xsl:if test="96 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#07-06-2001">07-06-2001: lucas-desarrollo</a></b>:<br/>
El buscador de LuCAS vuelve a funcionar tras un cambio de configuraci�n.
</p>
<p>
Inauguramos la nueva secci�n <a href="http://lucas.hispalinux.es/htmls/lucas-desarrollo.html">lucas-desarrollo</a>, dedicada a crear e
implementar recursos ling��sticos libres.
</p>
<p>
Publicamos el primer borrador del �<a href="http://lucas.hispalinux.es/Manuales-LuCAS/LBTD/libro-blanco-tecnologias-doc-0.1/book-libro-blanco-tecnologias-lucas.html">Libro blanco de las tecnolog�as de
documentaci�n de LuCAS</a>�, que es la piedra angular del esfuerzo
<a href="http://lucas.hispalinux.es/htmls/lucas-desarrollo.html">lucas-desarrollo</a>. Estamos orgullosos de publicar unos trabajos que han
estado demasiado tiempo fuera de la web.

</p>
				</xsl:if>
			
				<xsl:if test="97 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#24-05-2001">24-05-2001: </a></b>:<br/>
Conferencia �Puesta en marcha de un servidor de bases de datos utilizando
PostgreSQL� por Jos� A. Rocamonde.

5-05-2001

Creamos una nueva secci�n dedicada a la traducci�n de licencias de software
libre y adem�s publicamos la traducci�n orientativa de la GNU Lesser General
Public Licence.

</p>
				</xsl:if>
			
				<xsl:if test="98 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#02-05-2001">02-05-2001: </a></b>:<br/>
Ponemos a disposici�n de la comunidad el servicio <i>rsync</i> para
facilitar las r�plicas de LuCAS.

</p>
				</xsl:if>
			
				<xsl:if test="99 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#21-04-2001">21-04-2001: </a></b>:<br/>
Publicamos dos nuevos tutoriales: "El sistema operativo Unix" y "Curso de
bases de datos y PostgreSQL".

</p>
				</xsl:if>
			
				<xsl:if test="100 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#11-04-2001">11-04-2001: </a></b>:<br/>
Debido a problemas con el antiguo servidor hemos trasladado el �rbol
principal de LuCAS a otro servidor. En unos d�as habremos restaurado el
servicio DNS y el cambio ser� transparente para todos los usuarios.

</p>
				</xsl:if>
			
				<xsl:if test="101 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#27-03-2001">27-03-2001: </a></b>:<br/>
Publicamos las transparencias de las conferencias de Rodrigo Moya sobre
programaci�n de GNOME y GNOME DB.

</p>
				</xsl:if>
			
				<xsl:if test="102 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#21-03-2001">21-03-2001: Est�ndares</a></b>:<br/>
M�s RFC en castellano en la secci�n <a href="http://lucas.hispalinux.es/htmls/estandares.html">Est�ndares</a>:
<a href="http://www.rfc-es.org/rfc/rfc2663-es.txt">RFC2663-ES</a> - <b>Terminolog�a y consideraciones sobre Traducci�n de Direcciones IP</b> (BORRADOR)
<a href="http://www.rfc-es.org/rfc/rfc2694-es.txt">RFC2694-ES</a> - <b>Extensiones del DNS para Traductores de Direcciones de Red (DNS_ALG)</b> (BORRADOR)
<a href="http://www.rfc-es.org/rfc/rfc2709-es.txt">RFC2709-ES</a> - <b>Modelo de seguridad con IPsec modo t�nel para dominios NAT</b> (BORRADOR)

</p>
				</xsl:if>
			
				<xsl:if test="103 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#10-03-2001">10-03-2001: Linux, introducci�n y primeros 
pasos</a></b>:<br/>
Revisi�n del formato HTML de la gu�a  <a href="http://lucas.hispalinux.es/Manuales-LuCAS/LIPP/">Linux, introducci�n y primeros 
pasos</a>, aportando mucha m�s calidad y legibilidad. Gracias a Juan
Cayetano Delgado Rold�n.

</p>
				</xsl:if>
			
				<xsl:if test="104 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#08-03-2001">08-03-2001: http://LuCAS.HispaLinux.ES/Manuales-LuCAS/SEGUNIX/unixsec-1.2/</a></b>:<br/>
Superando otro de nuestros lamentables retrasos publicamos por fin la
versi�n html del fant�stico libro �Seguridad en Unix y redes� de Antonio
Villal�n. Este trabajo ha sido realizado por Juan Cayetano Delgado Rold�n y
lo pod�is encontrar en <a href="http://LuCAS.HispaLinux.ES/Manuales-LuCAS/SEGUNIX/unixsec-1.2/">http://LuCAS.HispaLinux.ES/Manuales-LuCAS/SEGUNIX/unixsec-1.2/</a>

</p>
				</xsl:if>
			
				<xsl:if test="105 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#06-03-2001">06-03-2001: http://linux.cem.itesm.mx/LuCAS</a></b>:<br/>
Inauguramos una nueva r�plica gracias al Grupo de Usuarios Linux del ITESM,
Campus Estado de M�xico. La direcci�n es <a href="http://linux.cem.itesm.mx/LuCAS">http://linux.cem.itesm.mx/LuCAS</a>.
�Bienvenidos!

</p>
				</xsl:if>
			
				<xsl:if test="106 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#04-03-2001">04-03-2001: Est�ndares</a></b>:<br/>
Hay dos nuevos RFC en castellano en la secci�n <a href="http://lucas.hispalinux.es/htmls/estandares.html">Est�ndares</a>:
El RFC1780-ES sobre Est�ndares de Protocolo y RFC2901-ES sobre Procedimientos Administrativos de Internet.

</p>
				</xsl:if>
			
				<xsl:if test="107 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#23-02-2001">23-02-2001: http://sdl.es.euskal-linux.org/</a></b>:<br/>
Se pone en marcha un proyecto para traducir la documentaci�n de SDL. Si
quieres participar en los trabajos o examinar el material ya disponible la
direcci�n del proyecto es  <a href="http://sdl.euskal-linux.org/">http://sdl.es.euskal-linux.org/</a>. 

</p>
				</xsl:if>
			
				<xsl:if test="108 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#20-02-2001">20-02-2001: http://www.publiclibraryofscience.org</a></b>:<br/>
Se ha puesto en marcha una iniciativa para pedir que art�culos cient�ficos
publicados en revistas pasen al dominio p�blico a los seis meses. Sin duda
alguna apoyamos la idea porque favorece el intercambio del conocimiento. Si
quieres firmar hazlo en <a href="http://www.publiclibraryofscience.org/">http://www.publiclibraryofscience.org</a>.
</p>
<p>
Publicamos la traducci�n de la Free Documentation License. No tiene validez
legal pero resulta util�sima para comprender el uso y alcance de la misma.
Disponible en varios formatos en: <a href="http://LuCAS.HispaLinux.ES/Otros/fdles/">http://LuCAS.HispaLinux.ES/Otros/fdles/</a>.

</p>
				</xsl:if>
			
				<xsl:if test="109 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#15-2-2001">15-2-2001: Est�ndares</a></b>:<br/>
Nuevas traducciones de RFC en la secci�n <a href="http://lucas.hispalinux.es/htmls/estandares.html">Est�ndares</a>. Se incluyen borradores,
es decir, traducciones que a�n est�n por revisar, pero que se dejan leer. 
�Disfrutadlo!

</p>
				</xsl:if>
			
				<xsl:if test="110 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#23-01-2001">23-01-2001: aqui</a></b>:<br/>
Se comenz� a repartir los temas para el segundo manual del proyecto
<i>Cursos</i> en LuCAS. Pr�ximamente se actualizar� la p�gina web para dar
mas informaci�n al respecto. Aquellos interesados en colaborar,
pueden suscribirse a la lista del proyecto <a href="http://listas.hispalinux.es/mailman/listinfo/cursos-linux">aqui</a>.

</p>
				</xsl:if>
			
				<xsl:if test="111 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#17-12-2000">17-12-2000: http://lucas.hispalinux.es/htmls/cvs.html</a></b>:<br/>
Ya est� en marcha el acceso an�nimo al servidor cvs de
LuCAS/Hispalinux/Barrapunto. Tienes las instrucciones en
<a href="http://lucas.hispalinux.es/htmls/cvs.html">http://lucas.hispalinux.es/htmls/cvs.html</a>
</p>
<p>
Est� disponible un nuevo servicio de informaci�n por correo-e de las
novedades en LuCAS y otros proyectos de documentaci�n. Para ello s�lo
hay que suscribirse usando este enlace: 
<a href="mailto:lucas-anuncios-request@listas.hispalinux.es?subject=subscribe">mailto:lucas-anuncios-request@listas.hispalinux.es?subject=subscribe</a>

5-12-2000

Se ha vuelto a poner en marcha el <a href="http://LuCAS.HispaLinux.ES/lista-correo/">archivado autom�tico de la lista de correo</a>
de LuCAS que vuelve a estar disponible en formato html.

</p>
				</xsl:if>
			
				<xsl:if test="112 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#22-11-2000">22-11-2000: http://umeet.uninet.edu/spanish/pres.html</a></b>:<br/>
Ya est� en marcha el I CONGRESO INTERNACIONAL DE UNIX EN UNINET. M�s
informaci�n en <a href="http://umeet.uninet.edu/spanish/pres.html">http://umeet.uninet.edu/spanish/pres.html</a>

</p>
				</xsl:if>
			
				<xsl:if test="113 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#17-11-2000">17-11-2000: III Congreso Hispalinux</a></b>:<br/>
Publicamos casi todas las ponencias presentadas en el <a href="http://congreso.hispalinux.es/">III Congreso Hispalinux</a>. Para m�s informaci�n, consultad
la secci�n �Conferencias�.

</p>
				</xsl:if>
			
				<xsl:if test="114 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#14-11-2000">14-11-2000: http://petition.eurolinux.org</a></b>:<br/>
Adhesi�n a la campa�a en contra de las patentes de software. Ese peligro 
tambi�n te afecta a ti. M�s info en <a href="http://petition.eurolinux.org/index_html?LANG=es">http://petition.eurolinux.org</a>.

</p>
				</xsl:if>
			
				<xsl:if test="115 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#06-11-2000">06-11-2000: actividad del servidor cvs</a></b>:<br/>
Ya est� en marcha la lista de correo con la <a href="http://listas.hispalinux.es/pipermail/lucas-cvs-actividad/">actividad del servidor cvs</a>.
Puedes suscribirte <a href="http://listas.hispalinux.es/mailman/listinfo/lucas-cvs-actividad">aqu�</a>.

</p>
				</xsl:if>
			
				<xsl:if test="116 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#03-11-2000">03-11-2000: listas de correo</a></b>:<br/>
Inauguramos el nuevo servicio de <a href="http://lucas.hispalinux.es/htmls/listas.html">listas de correo</a> para proyectos de
documentaci�n.

</p>
				</xsl:if>
			
				<xsl:if test="117 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#31-10-2000">31-10-2000: Barrapunto</a></b>:<br/>
Inauguramos la p�gina dedicada al servidor cvs que <a href="http://www.barrapunto.com">Barrapunto</a> e <a href="http://www.hispalinux.es">Hispalinux</a>
ponen a disposici�n de la comunidad. Se ha tardado bastante en anunciarlo
pero como pod�is comprobar se encuentra a pleno rendimiento. El acceso y uso
est� documentado en <a href="http://lucas.hispalinux.es/htmls/cvs.html">http://lucas.hispalinux.es/htmls/cvs.html</a>. 
En breve m�s novedades.

</p>
				</xsl:if>
			
				<xsl:if test="118 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#06-10-2000">06-10-2000: </a></b>:<br/>
Inauguramos dos nuevas r�plicas. Una en Espa�a y otra en M�xico.
Disfrutadlas :-)

</p>
				</xsl:if>
			
				<xsl:if test="119 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#05-10-2000">05-10-2000: </a></b>:<br/>
Acabamos de incorporar un tutorial y el texto transparente (SGML) del proyecto
Postgresql-es. Mirad la r�plica que mantenemos para m�s informaci�n.

</p>
				</xsl:if>
			
				<xsl:if test="120 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#05-10-2000">05-10-2000: </a></b>:<br/>
Publicamos una nueva edici�n del manual �Seguridad en Unix� de Antonio
Villal�n. Para m�s informaci�n, consultad la secci�n de Manuales.

</p>
				</xsl:if>
			
				<xsl:if test="121 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#30-09-2000">30-09-2000: PAMELI</a></b>:<br/>
IMPORTANTE: 
El proyecto <a href="http://lucas.hispalinux.es/htmls/pameli.html">PAMELI</a> busca un nuevo coordinador. Si est�s interesado en ser t�
el pr�ximo coordinador, env�a un correo a <a href="mailto:piernas@ditec.um.es">Juan Piernas</a>.

</p>
				</xsl:if>
			
				<xsl:if test="122 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#23-09-2000">23-09-2000: </a></b>:<br/>
LuCAS deja de ser r�plica de Allegro-es y pasa a ser su punto de
distribuci�n principal. Por lo tanto, Allegro pasa a estar disponible
en el men� �Proyectos en LuCAS� y su coordinador actualizar� directamente
sobre los recursos de LuCAS/Hispalinux (CVS).

</p>
				</xsl:if>
			
				<xsl:if test="123 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#22-09-2000">22-09-2000: </a></b>:<br/>
Se ha publicado una nueva versi�n del texto transparente de Postgresql-es.
Para m�s informaci�n, visitad su r�plica.

</p>
				</xsl:if>
			
				<xsl:if test="124 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#22-09-2000">22-09-2000: </a></b>:<br/>
Inauguramos una r�plica del proyecto de traducci�n de Allegro, una biblioteca
de funciones para crear videojuegos en diversas plataformas, incluyendo
GNU/Linux. Para m�s informaci�n, consultad el enlace �Allegro-es� disponible
en la secci�n de proyectos replicados.

</p>
				</xsl:if>
			
				<xsl:if test="125 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#17-09-2000">17-09-2000: </a></b>:<br/>
Nueva versi�n del tutorial de Linux del grupo de inform�tica Disk�bolo
de la UCM. Actualizado por el grupo LinuxCOL (Colombia) para las
versiones 6.x de Redhat Linux.

</p>
				</xsl:if>
			
				<xsl:if test="126 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#10-09-2000">10-09-2000: </a></b>:<br/>
Publicamos en la secci�n de Art�culos period�sticos, los trabajos publicados
hasta la fecha de Juan Antonio Mart�nez.

</p>
				</xsl:if>
			
				<xsl:if test="127 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#10-09-2000">10-09-2000: </a></b>:<br/>
�� POR FIN !! inauguramos la secci�n de Art�culos Period�sticos en LuCAS.
Es un espacio que cedemos a aquellos autores de art�culos relacionados
con GNU/Linux y el software libre en general, para que los publiquen
electr�nicamente, siempre que la editora original lo permita, claro.
</p>
<p>
Para m�s informaci�n, buscad la secci�n �Art�culos de Prensa� en el men�.

</p>
				</xsl:if>
			
				<xsl:if test="128 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#05-09-2000">05-09-2000: </a></b>:<br/>
Incorporamos a LuCAS una copia del manual de <B>Seguridad en Unix</B> escrito
por Antonio Villal�n. Para m�s informaci�n, visitad la secci�n �Manuales�.

</p>
				</xsl:if>
			
				<xsl:if test="129 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#01-09-2000">01-09-2000: </a></b>:<br/>
Publicamos la versi�n HTML de la GARL, por gentileza de Juan Cayetano
Delgado Rold�n. Disponible en la secci�n �Manuales�.

</p>
				</xsl:if>
			
				<xsl:if test="130 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#31-08-2000">31-08-2000: http://ditec.um.es/~piernas/manpages-es/</a></b>:<br/>
Se anuncia nueva versi�n de las p�ginas de manual en Espa�ol. Para m�s
informaci�n, consultad la p�gina de PAMELI, en LuCAS o en su sede principal
en <a href="http://ditec.um.es/~piernas/manpages-es/">http://ditec.um.es/~piernas/manpages-es/</a>

</p>
				</xsl:if>
			
				<xsl:if test="131 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#31-08-2000">31-08-2000: </a></b>:<br/>
Publicamos un tutorial de NCurses en la secci�n de �Tutoriales�.

</p>
				</xsl:if>
			
				<xsl:if test="132 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#30-08-2000">30-08-2000: </a></b>:<br/>
Con mucho atraso anunciamos que ya est� disponible la versi�n 4.0 del
Tutorial Linux, que est� disponible en paquetes para varias plataformas. Lo
encontrar�is en la secci�n de �Tutoriales�.

</p>
				</xsl:if>
			
				<xsl:if test="133 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#18-08-2000">18-08-2000: </a></b>:<br/>
Ya os pod�is bajar los paquetes en desarrollo de la secci�n de Cursos.
Para m�s informaci�n, consultad la p�gina �Cursos�.

</p>
				</xsl:if>
			
				<xsl:if test="134 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#12-08-2000">12-08-2000: </a></b>:<br/>
Por fin una p�gina de apoyo a COES, el corrector ortogr�fico en
espa�ol compatible con Ispell. Para m�s informaci�n, id a la secci�n
�COES� de los proyectos replicados.

</p>
				</xsl:if>
			
				<xsl:if test="135 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#11-08-2000">11-08-2000: Lucas di Pentima</a></b>:<br/>
Se presenta un nuevo proyecto de manuales de formaci�n sobre GNU/Linux.
Pronto contar� con una p�gina de apoyo en LuCAS. Por el momento, necesitan
redactores y revisores, y pod�is contactar para colaborar con el coordinador,
<a href="mailto:ldipenti@usa.net">Lucas di Pentima</a>.

</p>
				</xsl:if>
			
				<xsl:if test="136 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#08-08-2000">08-08-2000: </a></b>:<br/>
Nuevos formatos de algunas presentaciones del II Congreso Hispalinux.
Para m�s informaci�n, consultad la p�gina de Conferencias.
</p>
<p>
Nueva r�plica en Nicaragua. Para m�s informaci�n, consultad la p�gina
�Acelera tu acceso a LuCAS�.

</p>
				</xsl:if>
			
				<xsl:if test="137 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#16-07-2000">16-07-2000: http://users.servicios.retecal.es/rsantos/</a></b>:<br/>
Nos llegan noticias de que el proyecto PostgreSQL-es se encuentra en
estado muy avanzado, en torno al 80% del trabajo realizado. No obstante
su coordinador solicita colaboraci�n para revisiones y maquetaci�n.
Para m�s informaci�n, consultad la p�gina
<a href="http://users.servicios.retecal.es/rsantos/">http://users.servicios.retecal.es/rsantos/</a>

</p>
				</xsl:if>
			
				<xsl:if test="138 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#14-07-2000">14-07-2000: Cap�tulo de Estudiantes ACM</a></b>:<br/>
Empezamos a incluir las conferencias presentadas en los Seminarios de Verano
sobre GNU/Linux organizados por el <a href="http://acm.asoc.fi.upm.es/">Cap�tulo de Estudiantes ACM</a> de la
Facultad de Inform�tica de Madrid. Visitad la secci�n <a href="http://lucas.hispalinux.es/htmls/presentaciones.html">�Presentaciones�</a>
para m�s informaci�n.
</p>
<p>
Se pone en marcha un nuevo proyecto de traducci�n. En este caso se trata
del extenso libro <B>Thinking in Java</B>. Para m�s informaci�n, consultad
la secci�n <a href="http://lucas.hispalinux.es/htmls/proyectos.html">�Proyectos en curso�</a>.

</p>
				</xsl:if>
			
				<xsl:if test="139 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#12-07-2000">12-07-2000: </a></b>:<br/>
Publicamos nueva edici�n de la gu�a del usuario de Linux (GLUP). Esta edici�n
afecta al paquete de fuentes (al que le faltaban algunos elementos) y
adem�s incluye un formato PDF optimizado, como ya hab�amos anunciado.
Para m�s informaci�n mirad la secci�n �Manuales�.

</p>
				</xsl:if>
			
				<xsl:if test="140 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#11-07-2000">11-07-2000: Barrapunto</a></b>:<br/>
Se ha mejorado sensiblemente el servidor CVS gracias a la colaboraci�n
de <a href="http://www.barrapunto.com/">Barrapunto</a> que ha proporcionado desinteresadamente sus recursos.
Recordad que pod�is solicitar acceso a nuestro CVS para trabajos relacionados
con LuCAS.

</p>
				</xsl:if>
			
				<xsl:if test="141 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#10-07-2000">10-07-2000: http://lucas.hispalinux.es/htmls/proyectos.html</a></b>:<br/>
Gracias a la inestimable ayuda de Jaime Villate, y al lanzamiento
de ghostscript 6.01, por fin empezamos a generar formatos PDF de algunos
manuales que nos ven�s demandando desde hace a�os. Por ahora hemos
generado las gu�as de Redes, Programaci�n e Instalaci�n; esperamos seguir
generando las que faltan. Para m�s informaci�n, buscad la secci�n
�Manuales� en el men� de la izquierda.

7-07-2000

Inaugurada la p�gina de proyectos en curso, disponible y coordinada
en <a href="http://lucas.hispalinux.es/htmls/proyectos.html">http://lucas.hispalinux.es/htmls/proyectos.html</a>

4-07-2000

Seguimos incorporando tutoriales y presentaciones. En este caso,
dos nuevas introducciones (al mundo del CGI en PERL y Javascript, y al
NIS y NFS, respectivamente) y una presentaci�n del grupo peruano PLUG.

3-07-2000

Incorporamos dos nuevos tutoriales (PERL, Python) a la secci�n
correspondiente, y tambi�n algunas presentaciones a la secci�n
de Conferencias.

2-07-2000

Noticias de Postgresql-es: �Terminada la fase de Asignaci�n de ficheros del
proyecto de traduci�n al espa�ol de la documentaci�n de PostgreSQL RDBMS
(traducido el 80 %)�

</p>
				</xsl:if>
			
				<xsl:if test="142 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#29-06-2000">29-06-2000: NuLies</a></b>:<br/>
Por fin hemos integrado la replicaci�n autom�tica de <a href="http://nulies.hispalinux.es">NuLies</a> (N�cleo
Linux en espa�ol) en <a href="http://lucas.hispalinux.es/NuLies/web/index.html">LuCAS</a>.

</p>
				</xsl:if>
			
				<xsl:if test="143 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#27-06-2000">27-06-2000: http://lucas.hispalinux.es/htmls/orca.html</a></b>:<br/>
Integramos el glosario ORCA de Jaime Villate en LuCAS. Para m�s
informaci�n, consultad la p�gina <a href="http://lucas.hispalinux.es/htmls/orca.html">http://lucas.hispalinux.es/htmls/orca.html</a>, accesible tambi�n
desde la entrada �Glosario� en el men� de LuCAS.

</p>
				</xsl:if>
			
				<xsl:if test="144 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#24-06-2000">24-06-2000: http://barrapunto.com/lengua/</a></b>:<br/>
Desde ahora iniciamos una colaboraci�n m�s estrecha con Barrapunto.
Concretamente, intentaremos ayudar y recibir ayuda de la gente de
la secci�n de Lengua, en <a href="http://barrapunto.com/lengua/">http://barrapunto.com/lengua/</a>.
�Os animamos a participar desde aqu�!
</p>
<p>
Incorporamos un nuevo tutorial de Linux para novatos, escrito por
<B>Antonio Castro Snurmacher</B>. Para m�s informaci�n visitad la
<a href="http://lucas.hispalinux.es/htmls/tutoriales.html">p�gina correspondiente</a>.
</p>
<p>
Estamos moviendo algunos documentos de la secci�n de Manuales
a la nueva de <B>Tutoriales</B>. Si ech�is en falta algo en una,
visitad la otra ;-)

</p>
				</xsl:if>
			
				<xsl:if test="145 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#21-06-2000">21-06-2000: http://www.rosario.linux.org.ar/</a></b>:<br/>
LuCAS apoya el pr�ximo evento GNU/Linux en Rosario (Argentina). Para
m�s informaci�n consultad <a href="http://www.rosario.linux.org.ar/">http://www.rosario.linux.org.ar/</a>.

</p>
				</xsl:if>
			
				<xsl:if test="146 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#16-06-2000">16-06-2000: http://lucas.hispalinux.es/htmls/tutoriales.html</a></b>:<br/>
Acabamos de crear la nueva secci�n de <B>tutoriales</B>, en la p�gina
<a href="http://lucas.hispalinux.es/htmls/tutoriales.html">http://lucas.hispalinux.es/htmls/tutoriales.html</a>.
A esta p�gina hemos incorporado algunos documentos pendientes y hemos movido
otros que estaban en la secci�n de Manuales. Esperamos que os guste.

</p>
				</xsl:if>
			
				<xsl:if test="147 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#10-06-2000">10-06-2000: http://lucas.hispalinux.es/htmls/nuevoslogos.html</a></b>:<br/>
Presentamos algunos logotipos creados por <b>Daniel Santo Orcero</b>.
En la p�gina <a
href="http://lucas.hispalinux.es/htmls/nuevoslogos.html">http://lucas.hispalinux.es/htmls/nuevoslogos.html</a>
ten�is la oportunidad de opinar sobre los bocetos creados.

</p>
				</xsl:if>
			
				<xsl:if test="148 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#05-06-2000">05-06-2000: p�gina de conferencias</a></b>:<br/>
Estamos dinamizando algunas secciones. Por ejemplo, ya pod�is ver
parte de los resultados en la <a href="http://lucas.hispalinux.es/htmls/presentaciones.html">p�gina de conferencias</a>.

</p>
				</xsl:if>
			
				<xsl:if test="149 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#23-05-2000">23-05-2000: http://lucas.hispalinux.es/htmls/replicas.html</a></b>:<br/>
No paramos. Ya tenemos otra r�plica en Costa Rica. Para m�s informaci�n
consultad la p�gina de r�plicas, <a href="http://lucas.hispalinux.es/htmls/replicas.html">http://lucas.hispalinux.es/htmls/replicas.html</a>.

</p>
				</xsl:if>
			
				<xsl:if test="150 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#17-05-2000">17-05-2000: chicos del GUL</a></b>:<br/>
Inauguramos otra r�plica en Madrid (Espa�a), administrada por los <a
href="http://www.gul.uc3m.es/">chicos del GUL</a> de la
Universidad Carlos III. Para m�s informaci�n, consultad <a
href="http://lucas.hispalinux.es/htmls/replicas.html">esta p�gina</a>.

</p>
				</xsl:if>
			
				<xsl:if test="151 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#12-04-2000">12-04-2000: esta p�gina</a></b>:<br/>
Inauguramos una nueva r�plica en M�xico (MPS). Para m�s informaci�n,
consultad <a
href="http://lucas.hispalinux.es/htmls/replicas.html">esta p�gina</a>.

</p>
				</xsl:if>
			
				<xsl:if test="152 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#08-04-2000">08-04-2000: linux.apostols.org</a></b>:<br/>
LuCAS acaba de migrar el mantenimiento de su web al servidor cvs de 
HispaLiNUX. Esto significa que a partir de ahora ser� m�s f�cil colaborar
con el mantenimiento del mismo. Por lo pronto en muy pocos d�as 
inauguraremos una nueva p�gina destinada al control del estado de los 
proyectos. Permanezcan a la escucha :-)
</p>
<p>
Ya est� otra vez en marcha el servicio de b�squeda en <b>LuCAS</b>. De forma
temporal se podr� usar el buscador de <a href="http://linux.apostols.org">linux.apostols.org</a>.
Desde aqu�nuestro agradecimiento a su adminitrador <b>|Savage|</b>.

</p>
				</xsl:if>
			
				<xsl:if test="153 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#06-04-2000">06-04-2000: web de HispaLiNUX</a></b>:<br/>
HispaLiNUX ofrece a sus socios la posibilidad de asistir gratuitamente
a las conferencias de Linux-Expo. Para m�s informaci�n, id al
<a href="http://www.hispalinux.es/">web de HispaLiNUX</a>.

</p>
				</xsl:if>
			
				<xsl:if test="154 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#03-04-2000">03-04-2000: sergio@rabcee02.uco.es</a></b>:<br/>
En LuCAS estamos buscando gente para traducir el <I>manual de CVS</I>.
Si quieres participar, escribe a Sergio G�mez, en
<a href="mailto:sergio@rabcee02.uco.es">sergio@rabcee02.uco.es</a>.
</p>
<p>
Os recordamos que LuCAS e HispaLiNUX estar�n presentes en la
<a href="http://www.linux-expo.com/">Linux-Expo</a>. Accediendo a su
p�gina web en <a href="http://www.linux-expo.com/">http://www.linux-expo.com/</a> podr�is inscribiros gratuitamente.

</p>
				</xsl:if>
			
				<xsl:if test="155 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#09-02-2000">09-02-2000: Expo-Linux</a></b>:<br/>
El pr�ximo mes de marzo tendr� lugar en Madrid, Espa�a la primera
<a href="http://www.expo-linux.com/">Expo-Linux</a>. Hispalinux colaborar�
como es habitual en el evento. Visite <a href="http://www.expo-linux.com/">
este web</a> para m�s informaci�n.
</p>
<p>
Publicamos una nueva revisi�n del Tutorial de Linux.
<br/>
Nueva revisi�n del formato HTML de la LIPP.
<br/>
Publicada la traducci�n de la RFC 768.
<br/>
��POR FIN!! ��La licencia <a href="http://lucas.hispalinux.es/Otros/gples/gples.html">GPL</a> traducida al espa�ol!!

</p>
				</xsl:if>
			
				<xsl:if test="156 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#09-01-2000">09-01-2000: http://lucas.hispalinux.es/Trastienda/efecto2000-lucas.html</a></b>:<br/>
No lo dijimos el otro d�a, pero nuestro contador ya ha superado las
200.000 visitas desde que lo abrimos en febrero del 99. Los 
coordinadores estamos que no nos lo creemos. Parece que al fin y al 
cabo todo esto sirve para algo. 
<br/>
Desde aqu�felicitaciones para todos los colaboradores, autores, 
traductores y coordinadores de los proyectos replicados porque 
sin su esfuerzo esto no ser�a igual.
</p>
<p>
Por otra parte, y como an�cdota, comentamos que el web de LuCAS no
fue inmune al cambio de a�o (<a href="http://lucas.hispalinux.es/Trastienda/efecto2000-lucas.html">http://lucas.hispalinux.es/Trastienda/efecto2000-lucas.html</a> :-)

</p>
				</xsl:if>
			
				<xsl:if test="157 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#05-01-2000">05-01-2000: p�gina de r�plicas</a></b>:<br/>
Nueva r�plica en la empresa colombiana Publinetwork. Consulta la
<a href="http://lucas.hispalinux.es/htmls/replicas.html">p�gina de r�plicas</a>
para m�s informaci�n.

</p>
				</xsl:if>
			
				<xsl:if test="158 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#04-01-2000">04-01-2000: Manifiesto para el LDP</a></b>:<br/>
Publicamos el <a href="http://lucas.hispalinux.es/Manuales-LuCAS/LDP/LDP-Manifiesto.html">Manifiesto para el LDP</a>, escrito por
Michael K. Jonshon.
</p>
<p>
Publicamos <a href="http://lucas.hispalinux.es/Manuales-LuCAS/NOVATO/novato-a-novato/novato-a-novato.html">Linux: de Novato a Novato</a>, escrita
por <a href="mailto:traque@mx3.redestb.es">Gerardo Travesedo Cabezuelo</a>.

</p>
				</xsl:if>
			
				<xsl:if test="159 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#31-12-1999">31-12-1999: p�gina de r�plicas</a></b>:<br/>
Se inaugura una nueva r�plica en Brasil. Est� en preparaci�n otra en
Ecuador y alguna m�s. No dejes de visitar la <a href="http://lucas.hispalinux.es/htmls/replicas.html">p�gina de r�plicas</a> para m�s informaci�n.

</p>
				</xsl:if>
			
				<xsl:if test="160 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#30-12-1999">30-12-1999: Gu�a de Seguridad del Administrador de Linux</a></b>:<br/>
Publicamos la <a href="http://lucas.hispalinux.es/Manuales-LuCAS/GSAL/gsal-19991128-htm/">Gu�a de Seguridad del Administrador de Linux</a>, traducida
por <a href="mailto:revilla@segurinet.com">Jos� Antonio Revilla</a>.

</p>
				</xsl:if>
			
				<xsl:if test="161 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#21-12-1999">21-12-1999: Linux Expo</a></b>:<br/>
En abril del 2000 tendr� lugar en Madrid <a href="http://www.linux-expo.com">Linux Expo</a> 
del cual Hispalinux es colaborador. Por lo pronto ya est� abierta 
la petici�n de art�culos en: 
<a href="http://www.hispalinux.es/linux-expo/appel_a_com_Madrid.pdf">http://www.hispalinux.es/linux-expo/appel_a_com_Madrid.pdf</a>

</p>
				</xsl:if>
			
				<xsl:if test="162 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#18-12-1999">18-12-1999: RFC 1459</a></b>:<br/>
Tambi�n est� disponible en la secci�n de est�ndares la traducci�n
del <b><a href="http://lucas.hispalinux.es/Estandares/RFC/rfc1459-es.txt">RFC 1459</a> �Protocolo de Charla Basada en Internet (IRC)�</b>, por gentileza
de <em>Carlos Garc�a Argos</em>.
</p>
<p>
Tambi�n est� disponible en la secci�n de est�ndares la traducci�n
del <b><a href="http://lucas.hispalinux.es/Estandares/RFC/rfc1591-es.txt">RFC 1591</a> �Estructura y Delegaci�n del Sistema de Nombres de Dominio�</b>, 
por gentileza de <em>Carlos Garc�a Argos</em>.

</p>
				</xsl:if>
			
				<xsl:if test="163 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#16-12-1999">16-12-1999: Gu�a de Instalaci�n de Red Hat 6.0</a></b>:<br/>
�La versi�n en espa�ol de la <a href="http://lucas.hispalinux.es/Manuales-LuCAS/RHAT/rhl-ig-6.0es/index.html">Gu�a de Instalaci�n de Red Hat 6.0</a> 
traducida por <a href="http://www.HispaFuentes.com">http://www.HispaFuentes.com</a>!
</p>
				</xsl:if>
			
				<xsl:if test="164 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#3-12-1999">3-12-1999</a></b>:<br/>
<a href="http://nulies.hispalinux.es">NuLiEs</a> inaugura la nueva versi�n de su web. �Colabora localizando el
 n�cleo al espa�ol!

</p>
				</xsl:if>
			
				<xsl:if test="165 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#21-11-1999">21-11-1999: </a></b>:<br/>
Publicamos nuevas versiones de la Gu�a del EnROOTador y 
de la FAQ-R34.Linux.
<br/>
Adem�s inauguramos la nueva secci�n de <b>Canciones</b> con una 
versi�n ap�crifa del �Libre� de Nino Bravo :-)

</p>
				</xsl:if>
			
				<xsl:if test="166 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#17-11-1999">17-11-1999: mailto:cemz@tsai.es</a></b>:<br/>
<b><font size="+1">��NOVEDAD MUNDIAL!!</font> LuCAS</b> inaugura su motor de b�squeda v0.9. El servicio 
acaba de ser abierto y es posible que tenga alg�n fallito. En caso de que 
detect�is alguno por favor contactad con el autor <em>C�sar Mart�n</em> 
(<a href="mailto:cemz@tsai.es">mailto:cemz@tsai.es</a>). Desde aqu�nuestro m�s sincero agradecimiento.
</p>
<p>
Y en cuanto a vosotros: hala, a disfrutar... ;-)

</p>
				</xsl:if>
			
				<xsl:if test="167 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#15-11-1999">15-11-1999: </a></b>:<br/>
Se busca coordinador para concluir la traducci�n de la nueva versi�n
de la gu�a �<b>Linux: introducci�n y primeros pasos</b>� (LIPP). El trabajo
est� avanzado en un 50%. Los interesados poneos en contacto con el
administrador de estas p�ginas.

</p>
				</xsl:if>
			
				<xsl:if test="168 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#14-11-1999">14-11-1999: LIPP</a></b>:<br/>
Publicamos las versiones html de la <a href="http://lucas.hispalinux.es/Manuales-LuCAS/LIPP/">LIPP</a> y la <a href="http://lucas.hispalinux.es/Manuales-LuCAS/GLUP/">GLUP</a> por gentileza 
de <em>Insecto</em>. Confiamos en poder publicar en poco tiempo m�s
versiones de este estilo.
</p>
<p>
Tambi�n est� disponible en la secci�n de est�ndares la traducci�n
del <b><a href="http://lucas.hispalinux.es/Estandares/RFC/rfc2223-es.txt">RFC 2223</a> �Instrucciones para autores de RFC�</b>, por gentileza 
de <em>Pierre Le�n</em>. 

</p>
				</xsl:if>
			
				<xsl:if test="169 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#11-11-1999">11-11-1999: mailto:javipolo@oninet.es</a></b>:<br/>
Se ha puesto en marcha la traducci�n de la �Gu�a de seguridad de Linux�.
Todo el que est� interesado en participar s�rvase en contactar con el 
coordinador Javi Polo (<a href="mailto:javipolo@oninet.es">mailto:javipolo@oninet.es</a>).
El estado del proyecto puede consultarse en <a href="http://www.oninet.es/usuarios/fidonet/gsal.html">http://www.oninet.es/usuarios/fidonet/gsal.html</a>.

</p>
				</xsl:if>
			
				<xsl:if test="170 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#10-11-1999">10-11-1999: http://congreso.hispalinux.es</a></b>:<br/>
El pasado d�a 6 tuvo lugar en el <b>II Congreso Hispalinux</b> 
(<a href="http://congreso.hispalinux.es">http://congreso.hispalinux.es</a>) el <b>Foro LDP-es</b>. A pesar de que el congreso 
ha satisfecho a la mayor�a, en la organizaci�n creemos que este foro ha 
sido un completo fracaso no s�lo por el m�nimo inter�s despertado en el 
p�blico sino en los mismos activistas. Una oportunidad perdida.

</p>
				</xsl:if>
			
				<xsl:if test="171 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#02-11-1999">02-11-1999: Tutorial Linux</a></b>:<br/>
Nueva versi�n del <a 
href="http://lucas.hispalinux.es/htmls/glhis.html">Tutorial Linux</a> creado en el grupo <a href="http://glhis.hispalinux.es">GLHis</a>
por <a href="mailto:javiom@usa.net">Javier Orovengua</a>.
Por primera vez publicado al d�a en <b>LuCAS</b> O:-)

</p>
				</xsl:if>
			
				<xsl:if test="172 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#27-10-1999">27-10-1999: Proyecto NAVE</a></b>:<br/>
Aunque con retraso damos la bienvenida a una nueva incorporaci�n al 
Planeta LuCAS. Su nombre es �ngel Carrasco y va a ser un elemento 
indispensable del equipo. Estamos preparando importantes novedades
que mejorar�n todav�a m�s las prestaciones de la Red LuCAS.
Permanezcan en sinton�a.
</p>
				</xsl:if>
			
				<xsl:if test="173 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#9-10-1999">9-10-1999</a></b>:<br/>
El <a href="http://nave.hispalinux.es/">Proyecto NAVE</a> necesita un nuevo
responsable de mantenimiento. Su actual l�der, Rogelio B. Andreo, no puede
continuar por motivos personales. �� Ay�danos !! �No dejemos que le den
MoRzilla a NAVE!� :-)
</p>
				</xsl:if>
			
				<xsl:if test="174 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#9-10-1999">9-10-1999</a></b>:<br/>
Inauguramos dos nuevas r�plicas: una mantenida por el grupo de usuarios
de Venezuela (VELUG) y otra por el equipo de LinuxPPP, de M�xico. Para
m�s informaci�n, dirig�os a la <a href="http://lucas.hispalinux.es/htmls/replicas.html">p�gina de r�plicas</a>.
</p>
				</xsl:if>
			
				<xsl:if test="175 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#9-10-1999">9-10-1999</a></b>:<br/>
LuCAS programar� un foro LDP-es en el <a href="http://congreso.hispalinux.es/">
II Congreso HispaLiNUX</a> que se celebrar� el 5 y 6 de noviembre pr�ximo.
Visitad la web <a href="http://congreso.hispalinux.es/">http://congreso.hispalinux.es</a> para m�s informaci�n.
</p>
				</xsl:if>
			
				<xsl:if test="176 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#9-10-1999">9-10-1999</a></b>:<br/>
Anunciamos la emisi�n de la Petici�n de Ponencias para el <a href="http://congreso.hispalinux.es">II Congreso HispaLiNUX</a>.
Examinad el web y no dej�is de participar en el congreso GNU/LiNUX y <b>software
libre</b> m�s importante de Espa�a.
</p>
				</xsl:if>
			
				<xsl:if test="177 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#6-08-1999">6-08-1999</a></b>:<br/>
Inauguramos la r�plica autom�tica de <a href="http://ditec.um.es/~piernas/manpages-es/">PAMELI</a>. Adem�s tenemos el gusto de ofreceros las
 �ltimas versiones de los paquetes <a href="http://lucas.hispalinux.es/htmls/pameli.html">manpages-es-1.24</a> y <a href="http://lucas.hispalinux.es/htmls/pameli.html">manpages-es-extra-0.8</a> publicados recientemente.

</p>
				</xsl:if>
			
				<xsl:if test="178 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#25-07-1999">25-07-1999: FAQ sobre linux para principiantes - es.comp.os.linux</a></b>:<br/>
Publicamos la <a href="http://lucas.hispalinux.es/FAQ/FAQ_Linux/">FAQ sobre linux para principiantes - es.comp.os.linux</a>, 
coordinada por Rafael Mart�nez.

</p>
				</xsl:if>
			
				<xsl:if test="179 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#09-07-1999">09-07-1999: curso de doctorado</a></b>:<br/>
Publicamos el <a href="http://lucas.hispalinux.es/Presentaciones/tardesoftlibre99/">curso de doctorado</a> que Miguel de Icaza imparti� en la 
Universidad Carlos III de Madrid, en su visita a Espa�a en 1999.

</p>
				</xsl:if>
			
				<xsl:if test="180 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#06-07-1999">06-07-1999: tutorial de LyX</a></b>:<br/>
Publicamos en la secci�n de Manuales, un <a href="/Manuales-LuCAS/LYX">tutorial de LyX</a>, el entorno
gr�fico para LaTeX; cuya traducci�n ha sido coordinada por
Antonio Flores Gil.

</p>
				</xsl:if>
			
				<xsl:if test="181 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#02-07-1999">02-07-1999: Linux F�cil</a></b>:<br/>
Presentamos la versi�n beta de la gu�a <a href="http://lucas.hispalinux.es/Manuales-LuCAS/LINUXFACIL">Linux F�cil</a>, escrita por
Jos� M. Laveda. Este libro es una sencilla aproximaci�n al mundo 
Linux.
</p>
<p>
Publicamos por fin en <b>LuCAS</b> de forma oficial dos libros de Jos� 
Vicente N��ez Zabaleta: <a href="http://lucas.hispalinux.es/Manuales-LuCAS/DNS">DNS</a> y <a href="http://lucas.hispalinux.es/Manuales-LuCAS/TALLERUNIX">Taller de Unix</a>. 
Lo cierto es que ya ten�amos ganas :-)
</p>
<p>
Y recuperando otro hist�rico, presentamos el <a href="http://lucas.hispalinux.es/Manuales-LuCAS/MANUALUNIX/">Manual de Unix</a> escrito por
Jon Tombs y Jorge Ch�vez Orz�ez.

</p>
				</xsl:if>
			
				<xsl:if test="182 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#01-07-1999">01-07-1999: Benaguasil Party 99 (http://party.benaguasil.org)</a></b>:<br/>
LuCAS e HispaLiNUX participar�n en la <a href="http://party.benaguasil.org/">Benaguasil Party 99 (http://party.benaguasil.org)</a>, que tendr�
lugar los d�as 23 a 25 de Julio con el <a href="http://www.hispalinux.es/fiestorro/">Fiestorro Linuxero</a>.
</p>
<p>
�� No te la pierdas !! Habr� conferencias, mesas redondas, concursos...
Y tendr�is oportunidad de conocer a alg�nos gur�s de esos :-)

</p>
				</xsl:if>
			
				<xsl:if test="183 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#12-06-1999">12-06-1999: preguntas frecuentes sobre Internet</a></b>:<br/>
Publicamos una gran colecci�n de <a href="/htmls/faq.html">preguntas frecuentes sobre Internet</a> 
creada y publicada desde la red <b>FidoNet</b>.
</p>
<p>
Adem�s os presentamos la nueva secci�n de <a href="/htmls/estandares.html">est�ndares</a> inaugurada con
la traducci�n de Israel Barrientos del <a href="/Estandares/fsstnd12.html">FSSTND</a> y de Pedro J. Ponce de Le�n
de la RFC del <a href="/Estandares/RFC/rfc791-es.txt">Protocolo Internet</a>.
</p>
<p>
Ya est�n directamente accesibles desde <b>LuCAS</b> las <a href="/htmls/pameli.html">p�ginas 
del manual</a> que <a href="http://ditec.um.es/~piernas/manpages-es/">PAMELI</a> desarrolla y mantiene.
</p>
<p>
Por fin inauguramos la secci�n <a href="/htmls/otros.html">Otros</a> donde encontrareis interesantes 
documentos como <a href="/Otros/catedral-bazar/">La catedral y el bazar</a> y <a href="/Otros/html-hell-es.html">El infierno HTML</a> de Eric S. Raymod
y una <a href="/Otros/esr_critica_es.html">cr�tica a los art�culos</a> de Eric por Fran�ois-Ren� Rideau.


</p>
				</xsl:if>
			
				<xsl:if test="184 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#08-06-1999">08-06-1999: INSFLUG</a></b>:<br/>
<a href="http://www.insflug.org/">INSFLUG</a> se est� renovando, estrena
sistema de noticias y, lo m�s importante, un <a href="http://www.insflug.org/editorial/manifesto.php3"><I>Manifesto</I></a>,
que os recomendamos leer si sois colaboradores actuales o futuros.
</p>
<p>
Ya est� disponible una nueva versi�n del paquete de documentaci�n del
n�cleo Linux, dentro del proyecto NuLies. Si quieres acceder a �l,
usa esta direcci�n: <a href="http://members.es.tripod.de/nulies/">http://members.es.tripod.de/nulies</a>

</p>
				</xsl:if>
			
				<xsl:if test="185 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#05-06-1999">05-06-1999: </a></b>:<br/>
Nueva r�plica en Argentina. Aunque ve�is muchas seguiremos abiertos
a nuevas colaboraciones en este sentido, por supuesto ;-)

</p>
				</xsl:if>
			
				<xsl:if test="186 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#01-06-1999">01-06-1999: 
Versi�n 1.0, final, de la Gu�a de Administraci�n de Redes</a></b>:<br/>
LuCAS publica la <a href="/htmls/manuales.html">
Versi�n 1.0, final, de la Gu�a de Administraci�n de Redes</a>.
Es una revisi�n completa y definitiva realizada por Juan Jos� Amor e
I�aki Arenaza; y con aportaciones de Jes�s Jim�nez.

</p>
				</xsl:if>
			
				<xsl:if test="187 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#28-05-1999">28-05-1999: </a></b>:<br/>
Se activan dos nuevas r�plicas: una en Per� y otra en Colombia.
Las 50000 visitas ya son historia...

</p>
				</xsl:if>
			
				<xsl:if test="188 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#27-05-1999">27-05-1999: Tutorial Linux</a></b>:<br/>
Publicamos la �ltima versi�n del <a href="/GLHis/TutorialLinux-html-1.2.0.tar.gz">Tutorial Linux</a>, creada por el <b>GLHis</b>.
Otra gran noticia es que <a href="/LinuxFocus/pub/mirror/LinuxFocus/Castellano/index.html">LinuxFocus</a> ya forma parte de la familia <b>LuCAS</b>. A partir de ahora
la edici�n espa�ola de <b>LinuxFocus</b> estar� disponible en todas las r�plicas de <b>LuCAS</b> a lo largo del mundo.
��Y estamos a puntito de superar las 50.000 visitas s�lo para <b>LuCAS v3</b>!!

</p>
				</xsl:if>
			
				<xsl:if test="189 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#26-05-1999">26-05-1999: Flex</a></b>:<br/>
Publicamos la versi�n en castellano del manual de <a href=
"/Manuales-LuCAS/FLEX/">Flex</a>, el generador
de analizadores l�xicos de GNU compatible con <I>lex</I>.

</p>
				</xsl:if>
			
				<xsl:if test="190 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#25-05-1999">25-05-1999: Bison</a></b>:<br/>
Versi�n 1.27 del manual de <a href="/Manuales-LuCAS/BISON/">Bison</a> y la nueva <a href="/Manuales-LuCAS
/IAR/">Introducci�n a la Administraci�n de Redes TCP/IP</a> (IAR).

</p>
				</xsl:if>
			
				<xsl:if test="191 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#22-05-1999">22-05-1999: Gu�a del EnROOTador</a></b>:<br/>
Nuevos formatos para la <a href="/Manuales-LuCAS/ENROOTADOR">Gu�a del EnROOTador</a> y para el manual de <a href="/Manuales-LuCAS/BISON/">Bison</a>.

</p>
				</xsl:if>
			
				<xsl:if test="192 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#15-05-1999">15-05-1999: 
LinuxWeek'99</a></b>:<br/>
LuCAS se convierte en patrocinador de <a href="http://www.linuxweek.ven.org">
LinuxWeek'99</a>, evento que tendr� lugar en septiembre de este a�o en
Caracas (Venezuela).

</p>
				</xsl:if>
			
				<xsl:if test="193 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#15-05-1999">15-05-1999: </a></b>:<br/>
Comienza a funcionar una nueva r�plica en Argentina, mantenida por el
LuGAr (Grupo de Usuarios de Argentina).

</p>
				</xsl:if>
			
				<xsl:if test="194 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#11-05-1999">11-05-1999: </a></b>:<br/>
Comienza a funcionar una nueva r�plica (en C�rdoba, Espa�a), mientras
se preparan otras dos, una en Per� y otra en Argentina. El crecimiento
de LuCAS es imparable.

</p>
				</xsl:if>
			
				<xsl:if test="195 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#10-05-1999">10-05-1999: LIPP</a></b>:<br/>
Publicamos la <a href="/Manuales-LuCAS/LIPP/lipp-1.1.2-w97.zip">LIPP</a> en el formato de un conocido procesador de textos publicado en el a�o 97. Gentileza de Rodrigo.

7-05-1999

Comienzan a funcionar dos nuevas r�plicas: una en Girona (Espa�a) y la
otra en Lima (Per�).<br/>
Como siempre, para m�s informaci�n os remitimos a la <a href="/htmls/replicas.html">p�gina de las r�plicas</a> para m�s informaci�n.

3-05-1999

Publicamos la conferencia de Ismael Olea <a href="/Presentaciones/nexus99/conf-olea-nexus99.tar.gz">Linux, una apuesta libre</a>, impartida 
en Valencia.<br/>
Publicamos la versi�n <i>pdf</i> de la <a href="/Manuales-LuCAS/LIPP/LIPP-1.0.pdf.gz">LIPP</a> por gentileza de Paco Pepe Montilla.

</p>
				</xsl:if>
			
				<xsl:if test="196 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#30-04-1999">30-04-1999: CTV</a></b>:<br/>
<b>LuCAS</b> ha superado por fin sus problemas. <b>Slug</b>, el servidor que lo acoje ha estado 
ca�do o con problemas durante casi un mes. Pero la pericia de nuestro super-mega-administrador
(el �nclito <i>hacker</i> Luis Colorado) y sobre todo su tes�n no solo han resuelto los 
problemas de calentamiento sino que tambi�n le ha dado nueva vida.  Ahora <b>Slug</b> es un 
fabuloso Pentium II a 350mhz, con 128mb de RAM y, agarraos, m�s de 23 gigabytes en disco. 
Desde aqu�nuestro agradecimiento a <a href="http://www.ctv.es">CTV</a>, Antonio Castro y 
Eugenio Garrido por todo el material que han donado para hacer de Slug lo que es ahora.<br/>
Tambi�n celebramos la presentaci�n de nuestro nuevo servicio Avisador.  A partir de ahora 
autom�ticamente publicaremos las novedades de <b>LuCAS</b> m�s recientes en los foros de 
correo y noticias m�s conocidos.  Esperamos que sea de vuestra satisfacci�n.

</p>
				</xsl:if>
			
				<xsl:if test="197 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#08-04-1999">08-04-1999: r�plicas</a></b>:<br/>
Se han puesto en marcha tres nuevas r�plicas de <b>LuCAS</b> en Chile, Cuba y
Espa�a. Revisa la p�gina de <a href="/htmls/replicas.html">r�plicas</a> para m�s informaci�n.

</p>
				</xsl:if>
			
				<xsl:if test="198 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#29-03-1999">29-03-1999: Linux Tutorial</a></b>:<br/>
Comienza a publicarse el <a href="/GLHis/LinuxTutorial-html-1.0.21.tar.gz">Linux Tutorial</a>, del grupo <a href="http://visar.csustan.edu/~carlos/">GNU/Linux Hispano</a>, en <b>LuCAS</b>.
<br/>Adem�s ahora tambi�n est� disponible la versi�n <a href="/Manuales-LuCAS/GURH/GURH-es-b16.pdf">pdf</a> de la Gu�a de Usuario de Red Hat 5.0, por gentileza de
 <a href="mailto:mgaldames.rm@conama.cl">Mariano Galdames Beckdorf</a>.

</p>
				</xsl:if>
			
				<xsl:if test="199 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#26-03-1999">26-03-1999: Club de Inform�tica Disk�bolo</a></b>:<br/>
El <a href="http://diskobolo.mat.ucm.es">Club de Inform�tica Disk�bolo</a> publica su <a href="/Manuales-LuCAS/CURSOLINUX/">Curso de Linux</a> en <b>LuCAS</b>.

</p>
				</xsl:if>
			
				<xsl:if test="200 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#25-03-1999">25-03-1999: http://lucas.hispalinux.es/FAQ/FAQ-LuCAS/FAQ-LuCAS.html</a></b>:<br/>
Publicada la primera versi�n de la FAQ de <B>LuCAS</B> en <a href="/FAQ/FAQ-LuCAS/FAQ-LuCAS.html">http://lucas.hispalinux.es/FAQ/FAQ-LuCAS/FAQ-LuCAS.html</a>.

</p>
				</xsl:if>
			
				<xsl:if test="201 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#15-03-1999">15-03-1999: </a></b>:<br/>
Ya est� disponible en <b>LuCAS</b> la <b>Gu�a de instalaci�n oficial de 
Red Hat Linux</b> en espa�ol para la versi�n 5.0. Hace tiempo otro equipo 
nos comunic� que trabajaban en la versi�n 5.2. Esperamos que sea concluida
cuanto antes para publicarla aqu�tambi�n.

</p>
				</xsl:if>
			
				<xsl:if test="202 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#15-03-1999">15-03-1999: Pablo P�rez Fern�ndez</a></b>:<br/>
Tambien publicamos el <b>Manual de GNU Bison</b>. Este es un hito importante
puesto que es el primer manual del proyecto GNU que es publicado en <b>LuCAS</b>.
Como es de esperar lo encontrar�is en la secci�n de <i>manuales</i>.

8-03-1999

<a href="mailto:pablo@rutiger.edv.uniovi.es">Pablo P�rez Fern�ndez</a>,
del Colectivo de Apoyo a Linux de Asturias (<a
href="http://www.coala.uniovi.es">COALA</a>), inicia la traducci�n de la
<b>Linux System Administrator's Guide</b>.

</p>
				</xsl:if>
			
				<xsl:if test="203 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#11-02-1999">11-02-1999: 
http://people.mcom.com/rba/mozilla-es/es/vdown/unix407.html</a></b>:<br/>��<b>LuCAS</b> ha sido completamente renovado!!<br/>
��Nuevo interfaz!!<br/>
��Nuevos contenidos!!<br/>
��Nuevos proyectos!!<br/>
��Ahora todo el material conocido lo encontrar�s recopilado aqu�!!

4-02-1999

Nueva versi�n de <b>NAVE</b> (Mozilla en espa�ol) versi�n 4.07. Los usuarios
de Netscape Communicator 4.07 pueden bajarse el parche desde <a href="
http://people.mcom.com/rba/mozilla-es/es/vdown/unix407.html">
http://people.mcom.com/rba/mozilla-es/es/vdown/unix407.html</a>. <br/> Y
recordad que todav�a pod��s participar en el desarrollo de <a
href="$(htmldir)mozilla.html">NAVE</a>.

</p>
				</xsl:if>
			
				<xsl:if test="204 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#02-02-1999">02-02-1999: Juan Jos� Amor</a></b>:<br/>
<a href="mailto:jjamor@ls.fi.upm.es">Juan Jos� Amor</a> est� revisando la
<b>Gu�a de administraci�n de redes Linux</b> (<b>G.A.R.L.</b>). Como
siempre, las colaboraciones son bienvenidas.

</p>
				</xsl:if>
			
				<xsl:if test="205 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#11-01-1999">11-01-1999: Manuel de Vega Barreiro</a></b>:<br/>
<a href="mailto:barreiro@arrakis.es">Manuel de Vega Barreiro</a> est�
coordinando la traducci�n de la <b>Gu�a de usuario de
GNOME</b> y busca colaboradores. M�s informaci�n en <a
href="http://www.croftj.net/~barreiro/spain/gnome">http://www.croftj.net/~barreiro/spain/gnome</a>.

</p>
				</xsl:if>
			
				<xsl:if test="206 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#11-01-1999">11-01-1999: Jos� Manuel Laveda</a></b>:<br/>
<a href="mailto:jose_m@arrakis.es">Jos� Manuel Laveda</a> est�
trabajando en la nueva versi�n de su gu�a <b>Linux
f�cil</b>. Busca colaboradores.

</p>
				</xsl:if>
			
				<xsl:if test="207 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#11-01-1999">11-01-1999: C�sar Ballardini</a></b>:<br/>
<a href="mailto:cballard@santafe.com.ar">C�sar Ballardini</a>
est� trabajando en la traducci�n de la <b>Gu�a del Kernel</b>.
Los interesados, poneros en contacto con �l.

</p>
				</xsl:if>
			
				<xsl:if test="208 &lt;= $num_max or $num_max=-1">
			<p><b><a href="http://es.tldp.org/htmls/novedades.html#15-07-1998">15-07-1998: CTV</a></b>:<br/>
LuCAS estrena nuevo servidor, con una conexi�n mucho m�s potente (<a
href="http://www.ctv.es">CTV</a>) y un servidor mucho mejor gestionado (<a
href="http://slug.hispalinux.es">SLUG</a>).

</p>
				</xsl:if>
					
        </xsl:template>
        </xsl:stylesheet>
	
