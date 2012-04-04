<![CDATA[
<!DOCTYPE book PUBLIC "-//OASIS//DTD DocBook V4.1//EN">
<book lang="es">
  <chapter>
    
    <title><acronym>DocBook</acronym></title>
    <sect1>
      <title>Historia</title>
      <para><acronym>DocBook</acronym> es un lenguaje de marcado, que
       permite escribir documentaci�n t�cnica, nacido en 1991.</para>

      <para>Los principales contribuyentes a dicho proyecto han
      sido:</para>
      <itemizedlist>
	<listitem>
	  <para>Hal Computer Systems y O'Reilly &amp; Associates, de
    	  1991 a 1994</para>
	</listitem>
	<listitem>
	  <para>El grupo Davenport, de 1994 a 1998.</para>
	</listitem>
	<listitem>
	  <para>El grupo <acronym>OASIS</acronym> de 1998 hasta hoy.</para>
	</listitem>
      </itemizedlist>
    </sect1>
    <sect1>
      <title>Marquillas</title> 

      <para>En <acronym>DocBook</acronym>, la estructura de un
      documento se se marca a trav�s de marquillas de inicio y
      fin. Dichas marquillas lucen correspondiente como
      <replaceable>&lt;marquilla></replaceable> y
      <replaceable>&lt;\marquilla></replaceable>.</para>

      <para>A continuaci�n mostramos una tabla con algunas de las
      marquillas m�s usadas</para>

      <table>
	<title>Algunas marquillas</title>
	<tgroup cols="2">
	  <thead>
	    <row>
	      <entry>Nombre de la marquilla</entry>
	      <entry>Descripci�n de la marquilla</entry>
	    </row>
	  </thead>
	  <tbody>
	    <row>
	      <entry><sgmltag>book</sgmltag></entry>
	      <entry>Es la m�s importante, indica el inicio y fin de
	      un libro</entry>
	    </row>
	    <row>
	      <entry><sgmltag>chapter</sgmltag></entry>
	      <entry>Indica el inicio y fin de un cap�tulo</entry>
	    </row>
	  </tbody>
	</tgroup>
      </table>
    </sect1>
  </chapter>
  <chapter>
    <title><application>emacs</application></title>
    <sect1>
      <title>Invocaci�n</title>
      <para>Para invocar a <application>emacs</application>, basta
      hacer lo siguiente desde una l�nea de comandos</para>
<screen><prompt>[irving@abadon e2]$ </prompt><userinput>emacs&</userinput>
<computeroutput>[1] 6251</computeroutput>
<prompt>[irving@abadon e2]$ </prompt>
</screen>
      <para>Esto produce que se abra una ventana de
      <application>emacs</application> como la siguiente:</para>

      <informalfigure>
	<screenshot>
	  <mediaobject>
	    <imageobject>
	      <imagedata fileref="emacs.eps" format="eps" scale="40">
	    </imageobject>
	    <imageobject>
	      <imagedata fileref="emacs.png" format="png">
	    </imageobject>
	    <textobject>
	      <phrase>Una ventana de
	      <application>emacs</application></phrase>
	    </textobject>
	  </mediaobject>
	</screenshot>
      </informalfigure>
    </sect1>
    <sect1>
      <title>Escribiendo y guardando un archivo</title>
      
      <para>Dentro del editor escriba la frase <userinput>Hola
      Mundo</userinput> y posteriormente guarde dicho archivo usando
      <menuchoice>
	  <shortcut>
	    <keycombo action="seq">
	      <keysym>C-x</keysym><keysym>C-s</keysym>
	    </keycombo>
	  </shortcut>
	  <guimenu>Files</guimenu> <guimenuitem>Save Buffer
	  as</guimenuitem> 
	</menuchoice>, a continuaci�n <application>emacs</application> 
          responder� con el mensaje <computeroutput>File to save
	  in:~/20013/doc-tut/e2</computeroutput>, restando que usted
	  escriba solamente el nombre del archivo
	  (<filename>hola.txt</filename>).</para>
    </sect1>
  </chapter>
</book>
]]>