mn2db.cs
 Un programa sencillo para transformar documentos MonoDoc a DocBook
 mediante transformadas XSL

 maintainer: Ricardo Varela - phobeo at ieee dot org
-------------------------------------------------------------------

mn2db es un programa dise�ado para ayudar a la gente que necesita trabajar 
con el formato monodoc para transformar f�cilmente sus documentos a DocBook,
un formato est�ndar de documentaci�n muy sencillo de convertir a diferentes 
formatos, como HTML o PDF. Para m�s informaci�n sobre DocBook, puedes visitar
la p�gina http://www.docbook.org

mn2db se cre� originariamente como parte del proyecto de traducci�n del 
est�ndar ecma334 de la comunidad mono hispano, en colaboraci�n con LuCAS. 
La p�gina del proyecto puede visitarse en:
http://wiki.hispalinux.es/moin/ECMA_5fC_23



  UTILIZACI�N
-----------------------------------------------------------------

Primero debes compilar mn2db. Simplemente hay que introducir desde el directorio mn2db:

make

Recibir�s una advertencia del compilador que puedes ignorar. Tendr�s ahora un ejecutable llamado mn2db.exe, que se puede ejecutar como mono mn2db ruta_de_los_archivos_en_monodoc, o si se quiere utilizar en el projyecto de traducci�n del ECMA C#, ya hay un script preparado para la tarea de traducir todo el monodoc a docbook. Se consige simplemente haciendo

./mn2db

desde el directorio mn2db
