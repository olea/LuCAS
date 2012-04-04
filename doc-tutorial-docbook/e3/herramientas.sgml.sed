<![CDATA[
<!DOCTYPE book PUBLIC "-//OASIS//DTD DocBook V4.1//EN">
<book lang="es" id="doc-emacs">
  <bookinfo>
    <date>17 de Junio de 2001</date>
    <title><acronym>DocBook</acronym> y
    <application>emacs</application></title>
    <subtitle>Una gu�a b�sica</subtitle>
    <releaseinfo>Documentaci�n en progreso</releaseinfo>
    <authorgroup>
      <author>
	<firstname>Jaime Irving</firstname>
	<surname>D�vila</surname>
      </author>
    </authorgroup>
    <address>jadavila@uniandes.edu.co</address>
    <legalnotice>
      <para>El siguiente documento se cede al dominio p�blico</para>
    </legalnotice>
    <revhistory>
      <revision>
	<revnumber>1.0</revnumber>
	<date>16-06-2001</date>
	<authorinitials>jid</authorinitials>
	<revremark>Creaci�n del documento inicial</revremark>
      </revision>
      <revision>
	<revnumber>1.1</revnumber>
	<date>17-06-2001</date>
	<authorinitials>jid</authorinitials>
	<revremark>Inclusi�n del encabezado del documento</revremark>
      </revision>
      <revision>
	<revnumber>1.2</revnumber>
	<date>23-09-2001</date>
	<authorinitials>jid</authorinitials>
	<revremark>Correcci�n de legalnotice y jpg's</revremark>
      </revision>
      <revision>
	<revnumber>1.3</revnumber>
	<date>14-04-2002</date>
	<revremark>Inclusi�n de listados de programas, faq y
	marquillas de importancia</revremark>
      </revision>
    </revhistory>
  </bookinfo>
  <chapter id="DocBook">
    
    <title><acronym>DocBook</acronym></title>
    <sect1 id="historia">
      <title>Historia</title> 

      <para><firstterm linkend="doc"><acronym>DocBook</acronym></firstterm>
      es un lenguaje de marcado, que permite escribir documentaci�n
      t�cnica, nacido en 1991.
	<footnote>
	  <para>En caso de querer mayor informaci�n sobre la historia,
	    de <acronym>DocBook</acronym> consultar 
	    <ulink url="http://www.xml.com/lpt/a/1999/10/docbook/docbook-making.html"></ulink></para>
	</footnote></para>

      <para>Los principales contribuyentes a dicho proyecto han
      sido:</para>
      <itemizedlist>
	<listitem>
	  <para>Hal Computer Systems y O'Reilly &amp; Associates, de
    	  1991 a 1994</para>
	  <indexterm>
	    <primary>contribuyente a DocBook</primary>
	    <secondary>Hal Computer Systems</secondary>
	  </indexterm>
	  <indexterm>
	    <primary>contribuyente a DocBook</primary>
	    <secondary>O'Reilly &amp; Associates</secondary>
	  </indexterm>
	</listitem>
	<listitem>
	  <para>El grupo Davenport, de 1994 a 1998.</para>
	  <indexterm>
	    <primary>contribuyente a DocBook</primary>
	    <secondary>grupo Davenport</secondary>
	  </indexterm>
	</listitem>
	<listitem>
	  <para>El grupo <acronym>OASIS</acronym> de 1998 hasta
	  hoy.</para>
	  <indexterm>
	    <primary>contribuyente a DocBook</primary>
	    <secondary>Grupo Oasis</secondary>
	  </indexterm>
	</listitem>
      </itemizedlist>
    </sect1>
    <sect1 id="marquillas">
      <title>Marquillas</title> 

      <para>En <acronym>DocBook</acronym>, la estructura de un
      documento se delimita a trav�s de marquillas de inicio y
      fin. Dichas marquillas lucen correspondiente como
      <replaceable>&lt;marquilla></replaceable> y
      <replaceable>&lt;\marquilla></replaceable>.</para>

      <para>A continuaci�n mostramos una tabla con algunas de las
      marquillas m�s usadas</para>
      <indexterm>
	<primary>marquillas</primary>
      </indexterm>

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
  <chapter id="emacs">
    <title><application>emacs</application></title>
    <sect1 id="invocacion">
      <title>Invocaci�n</title> 

      <indexterm>
	<primary>emacs</primary>
	<secondary>invocaci�n</secondary>
      </indexterm>
      <para>Para invocar a
      <glossterm><acronym>emacs</acronym></glossterm>, basta hacer lo
      siguiente desde una l�nea de comandos</para>

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
    <sect1 id="persistencia">
      <title>Escribiendo y guardando un archivo</title>
      <tip>
	<para>Aunque de escasa utilidad en este �mbito, pero con fines
	  educativos podemos recordar <xref linkend="marquillas"></para>
      </tip>
      <para>Dentro del editor escriba la frase <userinput>Hola
      Mundo</userinput> y posteriormente guarde dicho archivo usando
      <menuchoice>
	  <shortcut>
	    <keycombo action="seq">
	      <keycombo>
		<keysym>C-x</keysym><keysym>C-s</keysym>
	      </keycombo>
	    </keycombo>
	  </shortcut>
	  <guimenu>Files</guimenu> <guimenuitem>Save Buffer
	  as</guimenuitem> 
	</menuchoice>, a continuaci�n <application>emacs</application> 
	responder� con el mensaje <computeroutput>File to save
	  in:~/20013/doc-tut/e2</computeroutput>, restando que usted
	escriba solamente el nombre del archivo
	(<filename>hola.txt</filename>).</para>

      <caution>
	<para>En <application>emacs</application> <keysym>C-x</keysym>
	  significa que presione al mismo tiempo
	  <keycap>Control</keycap> y <keycap>X</keycap></para>
      </caution>

      <important>
      <para>Puede conseguir informaci�n adicional de
      <application>emacs</application> en este <ulink
      url="http://www.emacs.org">enlace</ulink>, o una copia del
      archivo <ulink url="hola.txt">hola.txt</ulink>. En caso de dudas
      o comentarios puede enviar un
      <foreignphrase>email</foreignphrase> a
      <email>jadavila@uniandes.edu.co</email>.</para></important>

      <indexterm>
	<primary>hola.txt</primary>
      </indexterm>
      <indexterm>
	<primary>emacs</primary>
	<secondary>informaci�n</secondary>
      </indexterm>

    </sect1>
  </chapter>
  <appendix id="archivo-hola">
    <title>El archivo <filename>hola.txt</filename></title>
    <para>Por motivos de referencia inclu�mos el contenido del
      archivo <filename>hola.txt</filename></para>
    
    <informalexample>
<programlisting>
Hola Mundo
</programlisting>
    </informalexample>
  </appendix>

  <appendix id="faq">
    <title>Preguntas Frecuentes</title>
    <qandaset defaultlabel="number">
      <qandaentry>
	<question>
	  <para>�Qu� es <acronym>DocBook</acronym>?</para>
	</question>
	<answer>
	  <para>Es un lenguaje de marcado �til para escribir
	    documentaci�n t�cnica.</para>
	</answer>
      </qandaentry>
    </qandaset>
  </appendix>
  <glossary>
    <glossentry id="doc">
      <glossterm><acronym>DocBook</acronym></glossterm>
      <glossdef>
	<para>Lenguaje de marcado definido en
	<acronym>SGML</acronym>que permite escribir documentaci�n
	t�cnica</para>
      </glossdef>
    </glossentry>
    <glossentry>
      <glossterm>emacs</glossterm>
      <glossdef>
	<para>Editor de amplio uso en <acronym>unix</acronym>. Su
	nombre proviene de Editor MACroS (Macros de Edici�n). </para>
      </glossdef>
    </glossentry>
  </glossary>
</book>
]]>
