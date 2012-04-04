<?php
$cursos_dirs=array(
		   array("contenido/Introduccion","Introducci�n","1",true),

		   array("contenido/TextoVsGrafico","TxtVsGrf","2",true),
		   array("contenido/ServidorX","Servidor X","3",true),
		   array("contenido/MultiusuarioMultitareaQueEs","Multiusuario / Multitarea","4",true),

		   array("contenido/KDE2","KDE 2","5",true),
		   array("contenido/KDE2/Configuracion","KDE2 - Configuracion","6",true),
		   array("contenido/KDE2/Configuracion/PersonalizacionDelEscritorio","KDE2 - Escritorio","7",true),
		   array("contenido/KDE2/Configuracion/ConfiguracionDelPanel","KDE2 - Configuracion del Panel","8",true),

		   array("contenido/Login","Login","9",true),
		   array("contenido/PermisosDeUsuario","Permisos de usuario","10",true),



		   array("contenido/Internet","Internet","11",true),
		   array("contenido/CorreoElectronico","Correo Electronico","12",true),
		   
		   array("contenido/Editores","Editores","13",true),
		   array("contenido/Editores/vi","Editores - vi","14",true),
		   array("contenido/Shell","Shell","15",true),
		   array("contenido/Comandos","Comandos","16",true),
		   array("contenido/Administracion","Administracion del sistema","17",true),
		   
		   array("contenido/RPMYPaquetes","RPM y paquetes","18",true),

		   array("contenido/Mandrake","Mandrake","19",false),
		   array("contenido/Mandrake/configura","Mandrake - Configuracion","20",false),
		   array("contenido/Mandrake/instala","Mandrake - Instalaci�n","21",false),

		   array("contenido/CorreoElectronico/Sendmail","Sendmail","22",true),
		   array("contenido/ServidoresDeNoticias","Servidor de Noticias","23",false),		   

		   array("contenido/Apache","Apache","24",true),
		   array("contenido/Samba","Samba","25",true),

		   array("contenido/PersonalizandoElKernel","Personalizando el Kernel","26",false),
		   array("contenido/PersonalizandoElKernel/Modulos","Modulos del Kernel","27",false),

		   array("contenido/KDE1","KDE 1 (obsoleto)","28",false),
		   array("contenido/KDE1/Configuracion"," KDE1 - Configuracion (obsoleto) ","29",false),
		   array("contenido/KDE1/Configuracion/Ventanas","KDE1 - Conf. Ventanas (obsoleto)","30",false),
		   array("contenido/KDE1/Configuracion/PersonalizacionDelEscritorio","KDE1 - Escritorio (obsoleto)","31",false),
		   array("contenido/KDE1/Configuracion/ConfiguracionDelPanel","KDE1 - Panel (obsoleto)","32",false),
		   array("contenido/StarOffice","Star Office 5.1 (obsoleto)","33",false),

		   array("contenido/DocumentacionYAyuda","Documentacion y Ayuda","34",true),
		   array("contenido/DocumentacionYAyuda/Enlaces","Documentacion y Ayuda - Enlaces","35",true),
		   array("contenido/DocumentacionYAyuda/Enlaces/GruposLocales","Documentacion y Ayuda - Grupos locales","36",true),
		   array("contenido/DocumentacionYAyuda/Enlaces/SitiosDeInteres","Documentacion y Ayuda - Sitios de inter�s","37",true),

		   array("contenido/Agradecimientos","Agredecimientos","38",true),
		   array("contenido/Licencia","Licencia","39",true),

);

$cursos_array=array( 


/*
 *		--- Introducci�n --- (cap�tulo)
 */



array("contenido/Introduccion/Presentacion.tex","Presentaci�n","1"), // (No se adapta a lo que es actualmente el curso)
array("contenido/Introduccion/Descripcion.tex","�Qu� es GNU/Linux?","1"),
array("contenido/Introduccion/Historia.tex","Historia","no"),
array("contenido/Introduccion/OrigenLinuxYQuienEsLinusTorvalds.tex","�De d�nde sali� Linux?, ?'Qui�n es Linus Torvalds?","no"),
array("contenido/Introduccion/UnixYLinuxTienenAlgoQueVer.tex","UNIX y GNU/Linux... �tienen algo que ver?","1"),
array("contenido/Introduccion/Distribuciones.tex","Distribuciones","no"),
array("contenido/Introduccion/DiferenciasWindowsLinux.tex","Diferencias entre Windows y Linux","1"),
array("contenido/Introduccion/CompetenciaLinuxVsWindows.tex","Competencia de GNU/Linux vs Windows","1"),



/*
 *		--- TextoVsGrafico --- (cap�tulo)
 */



array("contenido/TextoVsGrafico/Introduccion.tex","Introducci�n","1"),
array("contenido/TextoVsGrafico/VentajasYDesventajas.tex","Ventajas y desventajas","1"),
array("contenido/TextoVsGrafico/Requerimientos.tex","Requerimientos","1"),
array("contenido/TextoVsGrafico/UsoDeTerminalesDeTextoEnEntornoGrafico.tex","Texto en entornos gr�ficos","1"),



/*
 *		---	Instalaci�n de GNU/Linux --- (cap�tulo)
 */



//	-- Mandrake -- (secci�n)


array("contenido/Mandrake/iniciando.tex","Iniciando la instalaci�n","no"),
array("contenido/Mandrake/lista_paquetes_mdk.tex","Lista de paquetes","no"),

//	- Instalaci�n - (subsecci�n)

array("contenido/Mandrake/instala/pasos_a_seguir.tex","Pasos a seguir","no"),
array("contenido/Mandrake/instala/particiones.tex","Creando las particiones para Linux","no"),
array("contenido/Mandrake/instala/paquetes.tex","Selecci�n de paquetes","no"),
array("contenido/Mandrake/instala/usuarios.tex","Establecer la clave del root y otros ususarios","no"),
array("contenido/Mandrake/instala/redes.tex","Configuraci�n de la Red ","no"),
array("contenido/Mandrake/instala/ConexionAInternet.tex","Configuraci�n de la conexi�n a Internet","no"),
array("contenido/Mandrake/instala/zona_horaria.tex","Zona Horaria","no"),
array("contenido/Mandrake/instala/impresora.tex","Configuraci�n de la impresora","no"),
array("contenido/Mandrake/instala/servicios.tex","Servicios en el Arranque","no"),
array("contenido/Mandrake/instala/disco_inicio.tex","Disco de inicio","no"),
array("contenido/Mandrake/instala/lilo.tex","Instalando LILO","no"),
array("contenido/Mandrake/instala/xwindows.tex","Configuraci�n de X-window","no"),

//	- Post-instalaci�n y administraci�n - (subsecci�n)

array("contenido/Mandrake/configura/ingreso.tex","Configuraci�n y Control de acceso","no"),
array("contenido/Mandrake/configura/lilo.tex","Configuraci�n de LILO","no"),
array("contenido/Mandrake/configura/impresora.tex","Printerdrake","no"),
array("contenido/Mandrake/configura/printerdrake.tex","PrinterDrake","no"),
array("contenido/Mandrake/configura/redes.tex","Configuraci�n de la Red","no"),
array("contenido/Mandrake/configura/modemconf.tex","Configuracion de modem","no"),
array("contenido/Mandrake/configura/recursos.tex","Compartir Recursos","no"),
array("contenido/Mandrake/configura/paquetes.tex","Herramientas de administraci�n","no"),
array("contenido/Mandrake/configura/newhardw.tex","Configuraci�n de hardware","no"),
array("contenido/Mandrake/configura/xfdrake.tex","Xconfigurator","no"),

// - (secci�n) -

array("contenido/Mandrake/biblio_mdk.tex","Bibliograf�a","no"),




/*
 *		---	Trabajando en modo texto --- (cap�tulo)
 */



//	-- Multiusuario y multitarea -- (secci�n)


array("contenido/MultiusuarioMultitareaQueEs/Introduccion.tex","Introducci�n","1"),
array("contenido/MultiusuarioMultitareaQueEs/Multiusuario.tex","Multiusuario","2"),
array("contenido/MultiusuarioMultitareaQueEs/AutenticacionAutorizacion.tex","Conceptos de autentificaci�n y autorizaci�n","2"),


//	-- Entrar en el sistema -- (secci�n)


array("contenido/Login/Introduccion.tex","Introducci�n","1"),
array("contenido/Login/IniciandoUnaSesion.tex","Iniciando una sesi�n","2"),
array("contenido/Login/LaBaseDeUsuarios.tex","La base de datos de los usuarios","2"),


//	-- Comandos b�sicos -- (secci�n)


array("contenido/Comandos/Introduccion.tex","Introducci�n","1"),


//	- Listado de comandos - (subsecci�n)


array("contenido/Comandos/cp.tex","El comando cp","2"),
array("contenido/Comandos/mv.tex","El comando mv","2"),
array("contenido/Comandos/ls.tex","El comando ls","2"),
array("contenido/Comandos/cd.tex","El comando cd","2"),
array("contenido/Comandos/touch.tex","El comando touch","2"),
array("contenido/Comandos/sort.tex","El comando sort","2"),
array("contenido/Comandos/less.tex","El comando less","2"),
array("contenido/Comandos/cat.tex","El comando cat","2"),
array("contenido/Comandos/head.tex","El comando head","2"),
array("contenido/Comandos/echo.tex","El comando echo","2"),
array("contenido/Comandos/tail.tex","El comando tail","2"),
array("contenido/Comandos/grep.tex","El comando grep","2"),
array("contenido/Comandos/find.tex","El comando find","2"),
array("contenido/Comandos/rm.tex","El comando rm","2"),
array("contenido/Comandos/mkdir.tex","El comando mkdir","2"),
array("contenido/Comandos/ln.tex","El comando ln","2"),
array("contenido/Comandos/pwd.tex","El comando pwd","2"),
array("contenido/Comandos/df.tex","El comando df","2"),
array("contenido/Comandos/du.tex","El comando du","2"),
array("contenido/Comandos/man.tex","El comando man","2"),
array("contenido/Comandos/apropos.tex","El comando apropos","2"),
array("contenido/Comandos/passwd.tex","El comando passwd","2"),
array("contenido/Comandos/whoami.tex","El comando whoami","2"),
array("contenido/Comandos/whereis.tex","El comando whereis","2"),
array("contenido/Comandos/locate.tex","El comando locate","2"),
array("contenido/Comandos/cal.tex","El comando cal","2"),
array("contenido/Comandos/wc.tex","El comando wc","2"),
array("contenido/Comandos/date.tex","El comando date","2"),
array("contenido/Comandos/mail.tex","El comando mail","2"),


//	-- Permisos de usuario -- (secci�n)


array("contenido/PermisosDeUsuario/Introduccion.tex","Introducci�n","1"),
array("contenido/PermisosDeUsuario/ConceptosBasicos.tex","Conceptos b�sicos","2"),
array("contenido/PermisosDeUsuario/Directorios.tex","Un caso especial, los directorios","2"),
array("contenido/PermisosDeUsuario/chmod.tex","Cambio de permisos: el comando chmod","2"),
array("contenido/PermisosDeUsuario/RepresentacionOctal.tex","Representaci�n octal","3"),


//	-- La shell -- (secci�n)


array("contenido/Shell/VariablesDeEntorno.tex","Variables de entorno","1"),


//	- Redirecci�n de entradas y salidas - (subsecci�n)


array("contenido/Shell/EntradaSalida.tex","Entrada, salida y error est�ndar","2"),
array("contenido/Shell/Tuberias.tex","Tuber�as (pipes)","2"),
array("contenido/Shell/Redireccion.tex","Redirecci�n","2"),

// - (subsubsubsecciones) -

array("contenido/Shell/Redireccion-Escritura.tex","Escritura","3"),
array("contenido/Shell/Redireccion-Lectura.tex","Lectura","3"),		
array("contenido/Shell/RedireccionIO-practica.tex","Pr�ctica","3"),

// - (subsecci�n) -

array("contenido/Shell/ConfiguracionBash.tex","Archivos de configuraci�n del int�rprete de comandos bash","2"),

// - (subsubsecciones) -

array("contenido/Shell/bashrc.tex",".bashrc","3"),
array("contenido/Shell/bash_profile.tex",".bash_profile","3"),

// - (subsecci�n) -

array("contenido/Shell/ProgramacionEnShell.tex","Programaci�n en shell","2"),

// - (subsubsecciones) -

array("contenido/Shell/CodigosDeSalida.tex","C�digos de salida","3"),
array("contenido/Shell/if.tex","El comando if","3"),
array("contenido/Shell/while.tex","El comando while","3"),
array("contenido/Shell/for.tex","El comando for","3"),
array("contenido/Shell/ProgramacionEnShell-practica.tex","Pr�ctica","3"),


//	-- Correo electr�nio -- (secci�n)


array("contenido/CorreoElectronico/Introduccion.tex","Introducci�n","1"),

// - (subsecci�n) -

array("contenido/CorreoElectronico/ClientesDeCorreo/Introduccion.tex","Uso de clientes de correo","no"),

// - (subsubsecciones) -

array("contenido/CorreoElectronico/ClientesDeCorreo/Pine/Introduccion.tex","Pine","no"),

// - (subsubsubsecciones) -

array("contenido/CorreoElectronico/ClientesDeCorreo/Pine/ConfiguracionBasica.tex","Configuraci�n B�sica","no"),
array("contenido/CorreoElectronico/ClientesDeCorreo/Pine/Carpetas.tex","Carpetas","no"),
array("contenido/CorreoElectronico/ClientesDeCorreo/Pine/LeyendoYEnviandoCorreo.tex","Leyendo y enviando correo","no"),
array("contenido/CorreoElectronico/ClientesDeCorreo/Pine/HaciendoRespaldoConfiguraciones.tex","Haciendo respaldo de las configuraciones","no"),

// - (subsubsecciones) -

array("contenido/CorreoElectronico/ClientesDeCorreo/Mutt/Introduccion.tex","Mutt","no"),

// - (subsecci�n) -

array("contenido/CorreoElectronico/EncriptandoElCorreo/Introduccion.tex","La seguridad del correo electr�nico","no"),

// - (subsubsecciones) -

array("contenido/CorreoElectronico/EncriptandoElCorreo/QueEsGnuPG.tex","�Qu� es GnuPG?","no"),
array("contenido/CorreoElectronico/EncriptandoElCorreo/ConfigurandoGPG.tex","Configurando GnuPG","no"),
array("contenido/CorreoElectronico/EncriptandoElCorreo/UsoDiarioDeGPG.tex","Uso diario de GnuPG","no"),
array("contenido/CorreoElectronico/EncriptandoElCorreo/CifrandoInformacion.tex","Cifrando informaci�n","no"),
array("contenido/CorreoElectronico/EncriptandoElCorreo/DescifrandoInformacion.tex","Descifrando informaci�n","no"),
array("contenido/CorreoElectronico/EncriptandoElCorreo/Conclusion.tex","Conclusi�n","no"),


// - (subsecciones) -


array("contenido/CorreoElectronico/EncriptandoDesdeClientesDeCorreo.tex","Encriptando desde el cliente de correo","no"),
array("contenido/CorreoElectronico/AutomatizandoCorreo.tex","Env�o de correo automatizado con el comando mail","no"),
array("contenido/CorreoElectronico/Codificacion.tex","Herramientas de tratamiento de codificaci�n MIME, UUE, ROT13, etc.","no"),
array("contenido/CorreoElectronico/fetchmail.tex","Configuraci�n y uso de fetchmail","no"),
array("contenido/CorreoElectronico/procmail.tex","Configuraci�n de filtros con procmail","no"),


//	-- Edici�n de archivos -- (secci�n)


array("contenido/Editores/vi/introduccion-a-vi.tex","Introducci�n al editor de textos vi","1"),



/*
 *	--- Tareas administrativas b�sicas --- (cap�tulo)
 */



//	-- Personalizaci�n y compilaci�n del n�cleo -- (secci�n)


array("contenido/PersonalizandoElKernel/Introduccion.tex","Introducci�n","1"),
array("contenido/PersonalizandoElKernel/SoporteDeHardware.tex","Soporte de hardware","2"),
array("contenido/PersonalizandoElKernel/ActualizacionDelNucleo.tex","Actualizaci�n del n�cleo","2"),
array("contenido/PersonalizandoElKernel/CompilacionDelNucleo.tex","Compilaci�n del n�cleo","2"),

// - (subsecci�n) -

array("contenido/PersonalizandoElKernel/LILO.tex","LILO","2"),

// - (subsubsecci�nes) -

array("contenido/PersonalizandoElKernel/ConfiguracionDeLILO.tex","Configurando LILO","3"),
array("contenido/PersonalizandoElKernel/IntalandoLILO.tex","Instalando LILO","3"),

// - (secci�n) -

array("contenido/PersonalizandoElKernel/Modulos/Introduccion.tex","Introduccion a los m�dulos","1"),

// - (subsecciones) -

array("contenido/PersonalizandoElKernel/Modulos/GenerandoModulos.tex","C�mo generar un m�dulo","2"),
array("contenido/PersonalizandoElKernel/Modulos/MostrandoModulos.tex","Mostrando los m�dulos cargados","2"),
array("contenido/PersonalizandoElKernel/Modulos/AgregandoModulos.tex","Agregando m�dulos","2"),
array("contenido/PersonalizandoElKernel/Modulos/RetirandoModulos.tex","Retirando m�dulos de memoria","2"),
array("contenido/PersonalizandoElKernel/Modulos/AutomatizandoModulos.tex","Automatizando un poco mas los m�dulos","2"),

// - (subsecci�n) -

array("contenido/PersonalizandoElKernel/PersonalizandoElKernel-practica.tex","Pr�ctica","no"),


//	-- Instalaci�n y actualizaci�n de paquetes utilizando RPM/DEB -- (secci�n)

 
//	- Paquetes RPM - (subsecci�n)

array("contenido/RPMYPaquetes/Instalacion.tex","Instalaci�n","1"),
array("contenido/RPMYPaquetes/Eliminacion.tex","Eliminaci�n","1"),
array("contenido/RPMYPaquetes/Verificacion.tex","Verificaci�n","1"),
array("contenido/RPMYPaquetes/BajadaDeInternet.tex","Consiguiendo paquetes nuevos","1"),
//	- (subsubsecci�n) -
array("contenido/RPMYPaquetes/NombresDePaquetes.tex","Saber sobre nombres de paquetes","2"),
array("contenido/RPMYPaquetes/Busqueda.tex","Buscando paquetes","2"),


//	-- Programaci�n de tareas con cron y at -- (secci�n)


array("contenido/Administracion/ProgramandoTareasConCron.tex","Programaci�n de tareas con cron","1"),


//	-- Configuraci�n b�sica de Samba -- (secci�n)


array("contenido/Samba/Introduccion.tex","Introducci�n","1"),
array("contenido/Samba/Funcionamiento.tex","Funcionamiento de Samba","2"),
array("contenido/Samba/Instalacion.tex","Obtenci�n e instalaci�n","2"),
array("contenido/Samba/Configuracion.tex","Configuraci�n de un servidor Samba como un servidor NT/2000","2"),


//	-- Configuraci�n b�sica de Apache -- (secci�n)


array("contenido/Apache/Introduccion.tex","Introducci�n a Apache","1"),
array("contenido/Apache/httpdconf.tex","El archivo httpd.conf","2"),
array("contenido/Apache/VirtualHost.tex","La directiva VirtualHost","2"),


//	-- Servidores de noticias -- (secci�n)


array("contenido/ServidoresDeNoticias/Introduccion.tex","Introducci�n","no"),
array("contenido/ServidoresDeNoticias/Leafnode/Introduccion.tex","Leafnode","no"),

// - (subsecciones) -

array("contenido/ServidoresDeNoticias/Leafnode/ObtencionEInstalacion.tex","Obtenci�n e Instalaci�n","no"),
array("contenido/ServidoresDeNoticias/Leafnode/ConfiguracionYUtilizacion.tex","Configuraci�n y utilizaci�n","no"),
array("contenido/ServidoresDeNoticias/Leafnode/LosFiltros.tex","Los filtros","no"),
array("contenido/ServidoresDeNoticias/Leafnode/Documentacion.tex","Documentaci�n","no"),

// - (secci�n) -

array("contenido/ServidoresDeNoticias/INN/Introduccion.tex","INN","no"),

// - (subsecciones) -

array("contenido/ServidoresDeNoticias/INN/ObtencionEInstalacion.tex","Inn+Suck: Obtenci�n e instalaci�n","no"),




//	-- Configuraci�n b�sica de Sendmail -- (secci�n)


array("contenido/CorreoElectronico/Sendmail/QueEsUnMTA.tex","�Qu� es un MTA?","1"),
array("contenido/CorreoElectronico/Sendmail/Smarthost.tex","Smarthost con sendmail","1"),
array("contenido/CorreoElectronico/Sendmail/UsuariosVirtuales.tex","Usuarios Virtuales","1"),
array("contenido/CorreoElectronico/Sendmail/DominiosVirtuales.tex","Dominios Virtuales con sendmail","1"),
array("contenido/CorreoElectronico/Sendmail/Aliases.tex","Alias de correo con sendmail","1"),
array("contenido/CorreoElectronico/Sendmail/Pasarela.tex","Pasarela de correos con sendmail","no"),
array("contenido/CorreoElectronico/Sendmail/AdmDeColaDeMensajes.tex","Administraci�n de Cola de Mensajes","1"),



/*
 *    --- Trabajando en modo gr�fico --- (cap�tulo)
 */



//	-- Servidor X -- (secci�n)


array("contenido/ServidorX/ModeloDeCapas.tex","Modelo de capas del protocolo X11","1"),
array("contenido/ServidorX/BibliotecasGraficas.tex","Bibliotecas gr�ficas","1"),



//	-- KDE1 -- (secci�n)

array("contenido/KDE1/Introduccion.tex","Introducci�n","1"),

// - Configuraci�n - (subsecci�n)

array("contenido/KDE1/Configuracion/Introduccion.tex","Introducci�n","2"),
array("contenido/KDE1/Configuracion/PersonalizacionDelIdioma.tex","Personalizaci�n del idioma","3"),
array("contenido/KDE1/Configuracion/ConfiguracionDelTipoDeTeclado.tex","Configuraci�n del tipo de teclado","3"),

//	- Personalizaci�n del escritorio - (subsecci�n)

array("contenido/KDE1/Configuracion/PersonalizacionDelEscritorio/PersonalizacionDelEscritorio.tex","Personalizaci�n del escritorio","3"),
array("contenido/KDE1/Configuracion/PersonalizacionDelEscritorio/Bordes.tex","Bordes","3"),
array("contenido/KDE1/Configuracion/PersonalizacionDelEscritorio/Colores.tex","Colores","3"),
array("contenido/KDE1/Configuracion/PersonalizacionDelEscritorio/Estilo.tex","Estilo","3"),
array("contenido/KDE1/Configuracion/PersonalizacionDelEscritorio/FondoDePantalla.tex","Fondo de pantalla","3"),
array("contenido/KDE1/Configuracion/PersonalizacionDelEscritorio/Fuentes.tex","Fuentes","3"),
array("contenido/KDE1/Configuracion/PersonalizacionDelEscritorio/GestorDeTemas.tex","Gestor de Temas","3"),
array("contenido/KDE1/Configuracion/PersonalizacionDelEscritorio/IconosDelEscritorio.tex","Iconos de escritorio","3"),
array("contenido/KDE1/Configuracion/PersonalizacionDelEscritorio/Salvapantalla.tex","Salvapantallas","3"),

//	- Personalizaci�n de las ventanas - (subsecci�n)

array("contenido/KDE1/Configuracion/Ventanas/Ventanas.tex","Personalizaci�n del comportamiento de las ventanas","3"),
array("contenido/KDE1/Configuracion/Ventanas/BarraDeTitulo.tex","Barra de t�tulo","3"),
array("contenido/KDE1/Configuracion/Ventanas/Botones.tex","Botones","3"),
array("contenido/KDE1/Configuracion/Ventanas/Propiedades.tex","Propiedades","3"),
array("contenido/KDE1/Configuracion/Ventanas/Avanzado.tex","Avanzado","3"),

//	- Configuraci�n del panel - (subsecci�n)

array("contenido/KDE1/Configuracion/ConfiguracionDelPanel/ConfiguracionDelPanel.tex","Configuraci�n de la Barra o Panel","3"),
array("contenido/KDE1/Configuracion/ConfiguracionDelPanel/Escritorios.tex","Escritorios","3"),
array("contenido/KDE1/Configuracion/ConfiguracionDelPanel/NavegadorDeDisco.tex","Navegador de disco","3"),
array("contenido/KDE1/Configuracion/ConfiguracionDelPanel/Opciones.tex","Opciones","3"),
array("contenido/KDE1/Configuracion/ConfiguracionDelPanel/Panel.tex","Panel","3"),



//	-- KDE2 -- (secci�n)


array("contenido/KDE2/Configuracion/Introduccion.tex","Introducci�n","1"),
array("contenido/KDE2/Configuracion/PersonalizacionDelIdioma.tex","Personalizaci�n del idioma y pa�s","2"),
array("contenido/KDE2/Configuracion/ConfiguracionDelTipoDeTeclado.tex","Configuraci�n del tipo de teclado","2"),
array("contenido/KDE2/Configuracion/PersonalizacionDeLasVentanas.tex","Personalizaci�n del comportamiento de las ventanas","2"),

//	- PersonalizacionDelEscritorio - (subsecci�n)

array("contenido/KDE2/Configuracion/PersonalizacionDelEscritorio/ConfiguracionDelEscritorio.tex","Configuraci�n del escritorio","3"),
array("contenido/KDE2/Configuracion/PersonalizacionDelEscritorio/Colores.tex","Colores del entorno","3"),
array("contenido/KDE2/Configuracion/PersonalizacionDelEscritorio/Estilo.tex","Estilo del entorno","3"),
array("contenido/KDE2/Configuracion/PersonalizacionDelEscritorio/FondoDePantalla.tex","Fondo de pantalla","3"),
array("contenido/KDE2/Configuracion/PersonalizacionDelEscritorio/Fuentes.tex","Tipograf�as del entorno","3"),
array("contenido/KDE2/Configuracion/PersonalizacionDelEscritorio/GestorDeTemas.tex","Gestor de Temas","3"),
array("contenido/KDE2/Configuracion/PersonalizacionDelEscritorio/IconosDelEscritorio.tex","Iconos del Entorno","3"),
array("contenido/KDE2/Configuracion/PersonalizacionDelEscritorio/Salvapantalla.tex","Salvapantalla","3"),

//	- ConfiguracionDelPanel - (subsecci�n)

array("contenido/KDE2/Configuracion/ConfiguracionDelPanel/ConfiguracionDelPanel.tex","Configuraci�n de la Barra � Panel","3"),
array("contenido/KDE2/Configuracion/ConfiguracionDelPanel/Panel.tex","Panel","3"),
array("contenido/KDE2/Configuracion/ConfiguracionDelPanel/Opciones.tex","Opciones","3"),
array("contenido/KDE2/Configuracion/ConfiguracionDelPanel/NavegadorDeDisco.tex","Navegador de disco","3"),
array("contenido/KDE2/Configuracion/ConfiguracionDelPanel/Escritorios.tex","Escritorios","3"),




/*
 *		--- StarOffice --- (cap�tulo)
 */



array("contenido/StarOffice/Introduccion.tex","Introducci�n","no"),
array("contenido/StarOffice/StarDesktop.tex","StarDesktop: El Entorno de StarOffice","no"),
array("contenido/StarOffice/StarWriter.tex","StarWriter: Procesador de textos","no"),
array("contenido/StarOffice/StarCalc.tex","StarCalc: Hoja de C�lculo","no"),
array("contenido/StarOffice/StarImpress.tex","StarImpress: Creador y Visualizador de Presentaciones","no"),
array("contenido/StarOffice/StarDraw.tex","StarDraw: Creador de dibujos","no"),
array("contenido/StarOffice/StarSchedule.tex","StarSchedule: Agenda","no"),
array("contenido/StarOffice/StarChart.tex","StarChart: Generador de gr�ficas","no"),
array("contenido/StarOffice/StarImage.tex","StarImage: Editor de Im�genes","no"),
array("contenido/StarOffice/CompatibilidadConElMSOffice.tex","Compatibilidad con el MS Office","no"),



/*
 *		--- Internet --- (cap�tulo)
 */



array("contenido/Internet/Conectarse.tex","Conectarse","1"),
array("contenido/Internet/ProblemasConElModem.tex","Problemas con el modem","2"),
array("contenido/Internet/ProblemasConPPPD.tex","Problemas con el pppd","2"),
array("contenido/Internet/ProblemasConElServidor.tex","Problemas relativos al provedor","2"),
array("contenido/Internet/Navegacion.tex","Navegaci�n","1"),
array("contenido/Internet/CorreoElectronico.tex","Correo electr�nico","1"),
array("contenido/Internet/UtilidadesVarias.tex","Utilidades varias","1"),
array("contenido/Internet/pingEnKnu.tex","Ping","2"),
array("contenido/Internet/Chat.tex","Chat","1"),
array("contenido/Internet/BusquedaDeArchivos.tex","B�squeda de archivos","1"),



/*
 *		--- DocumentacionYAyuda --- (cap�tulo)
 */



array("contenido/DocumentacionYAyuda/Introduccion.tex","Introducci�n","1"),
array("contenido/DocumentacionYAyuda/FilosofiaRTFM.tex","Filosof�a RTFM","1"),
array("contenido/DocumentacionYAyuda/PaginasMan.tex","P�ginas del Manual","1"),
array("contenido/DocumentacionYAyuda/SeccionesPaginaMan.tex","Secciones de una P�gina del Manual","no"),
array("contenido/DocumentacionYAyuda/PaginasInfo.tex","P�ginas Info","1"),
array("contenido/DocumentacionYAyuda/COMOs.tex","COMOs","1"),
array("contenido/DocumentacionYAyuda/Manuales.tex","Manuales","1"),
array("contenido/DocumentacionYAyuda/LinuxEnSantaFe-Argentina.tex","Linux en Santa Fe, Argentina","no"),


//	-- Enlaces -- (secci�n)


array("contenido/DocumentacionYAyuda/Enlaces/Introduccion.tex","Introducci�n","2"),
array("contenido/DocumentacionYAyuda/Enlaces/ListasDeCorreo.tex","Listas de correo","2"),


//	- GruposLocales - (subsecci�n)


array("contenido/DocumentacionYAyuda/Enlaces/GruposLocales/Introduccion.tex","Introducci�n","3"),
array("contenido/DocumentacionYAyuda/Enlaces/GruposLocales/Argentina.tex","Argentina","3"),
array("contenido/DocumentacionYAyuda/Enlaces/GruposLocales/Bolivia.tex","Bolivia","3"),
array("contenido/DocumentacionYAyuda/Enlaces/GruposLocales/Chile.tex","Chile","3"),
array("contenido/DocumentacionYAyuda/Enlaces/GruposLocales/Colombia.tex","Colombia","3"),
array("contenido/DocumentacionYAyuda/Enlaces/GruposLocales/CostaRica.tex","Costa Rica","3"),
array("contenido/DocumentacionYAyuda/Enlaces/GruposLocales/Cuba.tex","Cuba","3"),
array("contenido/DocumentacionYAyuda/Enlaces/GruposLocales/Ecuador.tex","Ecuador","3"),
array("contenido/DocumentacionYAyuda/Enlaces/GruposLocales/ElSalvador.tex","El Salvador","3"),
array("contenido/DocumentacionYAyuda/Enlaces/GruposLocales/Espania.tex","Espa�a","3"),
array("contenido/DocumentacionYAyuda/Enlaces/GruposLocales/Guatemala.tex","Guatemala","3"),
array("contenido/DocumentacionYAyuda/Enlaces/GruposLocales/Mexico.tex","M�xico","3"),
array("contenido/DocumentacionYAyuda/Enlaces/GruposLocales/Peru.tex","Per�","3"),
array("contenido/DocumentacionYAyuda/Enlaces/GruposLocales/PuertoRico.tex","Puerto Rico","3"),
array("contenido/DocumentacionYAyuda/Enlaces/GruposLocales/Uruguay.tex","Uruguay","3"),
array("contenido/DocumentacionYAyuda/Enlaces/GruposLocales/Venezuela.tex","Venezuela","3"),


//	- SitiosDeInteres - (subsecci�n)


array("contenido/DocumentacionYAyuda/Enlaces/SitiosDeInteres/Introduccion.tex","Introducci�n","3"),
array("contenido/DocumentacionYAyuda/Enlaces/SitiosDeInteres/Informacion.tex","Informaci�n","3"),
array("contenido/DocumentacionYAyuda/Enlaces/SitiosDeInteres/Documentacion.tex","Documentaci�n","3"),
array("contenido/DocumentacionYAyuda/Enlaces/SitiosDeInteres/Noticias.tex","Noticias","3"),
array("contenido/DocumentacionYAyuda/Enlaces/SitiosDeInteres/ProgramasYAplicaciones.tex","Programas y aplicaciones","3"),



/*
 *		--- Para el profesor --- (cap�tulo)
 */



array("contenido/ParaElProfesor/DinamicaDeClase.tex","Din�mica de clase","no"),
array("contenido/ParaElProfesor/GuiaDeTemas.tex","Gu�a de temas","no"),
array("contenido/ParaElProfesor/Transparencias.tex","Transparencias","no"),
array("contenido/ParaElProfesor/ejercitacion.tex","Ejercicios para proponer en clase","no"),
array("contenido/ParaElProfesor/Examenes.tex","Gu�a de preguntas para examenes","no"),
array("contenido/ParaElProfesor/Examen1.tex","Examen del curso I","no"),



/*
 *		--- Agradecimientos --- (cap�tulo)
 */



array("contenido/Agradecimientos/Agradecimientos.tex","Agradecimientos","1"),



/*
 *		--- Licencia --- (cap�tulo)
 */


// - (secciones) -

array("contenido/Licencia/Licencia.tex","Introducci�n","1"),
array("contenido/Licencia/fdl/fdl.tex","GNU Free Documentation License","1"), 

// - (subsecciones) -

array("contenido/Licencia/fdl/Preamble.tex","Preamble","2"), 
array("contenido/Licencia/fdl/ApplicabilityAndDefinitions.tex","Applicability and definitions","2"), 
array("contenido/Licencia/fdl/VerbatimCopying.tex","Verbatim Copying","2"), 
array("contenido/Licencia/fdl/CopyingInQuantity.tex","Copying in Quantity","2"), 
array("contenido/Licencia/fdl/Modifications.tex","Modifications","2"), 
array("contenido/Licencia/fdl/CombiningDocuments.tex","Combining Documents","2"), 
array("contenido/Licencia/fdl/CollectionsOfDocuments","Collections of Documents","2"), 
array("contenido/Licencia/fdl/AggregationWithIndependentWorks.tex","Aggregation With Independent Works","2"), 
array("contenido/Licencia/fdl/Translation.tex","Translation","2"), 
array("contenido/Licencia/fdl/Termination.tex","Termination","2"), 
array("contenido/Licencia/fdl/FutureRevisionsOfThisLicense.tex","Future Revisions of This License","2"), 
array("contenido/Licencia/fdl/ADDENDUM.tex","ADDENDUM: How to use this License for your documents","2"), 

);
?>
