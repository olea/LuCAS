<?xml version="1.0" encoding="ISO-8859-1" ?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="headers">
	<xsl:variable name="path"><xsl:value-of select="@path"/></xsl:variable>
	<xsl:variable name="section"><xsl:value-of select="@section"/></xsl:variable>
	
	<xsl:text disable-output-escaping="yes">		
		&lt;!-- Cabecera comun de cuerpo de pagina --&gt;
	</xsl:text>
<div id="cabecera">
<img id="logo01" src="{$path}images/logo01.gif" />
<img id="banner_principal" src="{$path}images/banner_principal.gif" />
</div>

<div id="menu_superior">
<table width="100%" height="25" border="0" cellspacing="0" cellpadding="0">
 <tr>
  <td width="123" valign="top"><img src="{$path}images/img_menu_superior.gif" /></td>
  <xsl:choose>
  	  <xsl:when test="$section='inicio'">
		<td class="menu_superior_on" onclick="document.location='{$path}index.html'">INICIO</td>
	  </xsl:when>
	  <xsl:otherwise>
		<td class="menu_superior_off" onmouseover="this.className='menu_superior_on'" onmouseout="this.className='menu_superior_off'" onclick="document.location='{$path}index.html'">INICIO</td>
	  </xsl:otherwise>
  </xsl:choose>
  
  <xsl:choose>
	  <xsl:when test="$section='proyectos'">
		<td class="menu_superior_on" onclick="document.location='{$path}htmls/manuales.html'">PROYECTOS</td>
	  </xsl:when>
	  <xsl:otherwise>
		<td class="menu_superior_off" onmouseover="this.className='menu_superior_on'" onmouseout="this.className='menu_superior_off'" onclick="document.location='{$path}htmls/manuales.html'">PROYECTOS</td>
	  </xsl:otherwise>
  </xsl:choose>
  
  <xsl:choose>
	  <xsl:when test="$section='replicas'">
  		<td class="menu_superior_on" onclick="document.location='{$path}htmls/coes.html'">R�PLICAS</td>
	  </xsl:when>
	  <xsl:otherwise>
		<td class="menu_superior_off" onmouseover="this.className='menu_superior_on'" onmouseout="this.className='menu_superior_off'" onclick="document.location='{$path}htmls/coes.html'">R�PLICAS</td>
	  </xsl:otherwise>
  </xsl:choose>		

  <xsl:choose>
	  <xsl:when test="$section='otros'">  
  		<td class="menu_superior_on" onclick="document.location='{$path}htmls/seccion-proyectos-importantes.html'">OTROS</td>
	  </xsl:when>
	  <xsl:otherwise>
		<td class="menu_superior_off" onmouseover="this.className='menu_superior_on'" onmouseout="this.className='menu_superior_off'" onclick="document.location='{$path}htmls/seccion-proyectos-importantes.html'">OTROS</td>
	  </xsl:otherwise>
  </xsl:choose>
		
  <xsl:choose>
	  <xsl:when test="$section='servicios'">  
		  <td class="menu_superior_on" onclick="document.location='{$path}htmls/servicios-editoriales.html'">SERVICIOS</td>
	  </xsl:when>  
	  <xsl:otherwise>
		  <td class="menu_superior_off" onmouseover="this.className='menu_superior_on'" onmouseout="this.className='menu_superior_off'" onclick="document.location='{$path}htmls/servicios-editoriales.html'">SERVICIOS</td>
	  </xsl:otherwise>
  </xsl:choose>
  
  <xsl:choose>
	  <xsl:when test="$section='noticias'">  
  		<td class="menu_superior_on" onclick="document.location='{$path}htmls/seccion-noticias.html'">NOTICIAS</td>
	  </xsl:when>
	  <xsl:otherwise>
		<td class="menu_superior_off" onmouseover="this.className='menu_superior_on'" onmouseout="this.className='menu_superior_off'" onclick="document.location='{$path}htmls/seccion-noticias.html'">NOTICIAS</td>
	  </xsl:otherwise>
  </xsl:choose>
		
  <xsl:choose>
	  <xsl:when test="$section='enlaces'">  
		  <td class="menu_superior_on" onclick="document.location='{$path}htmls/seccion-enlaces.html'">ENLACES</td>
      </xsl:when>
	  <xsl:otherwise>
		  <td class="menu_superior_off" onmouseover="this.className='menu_superior_on'" onmouseout="this.className='menu_superior_off'" onclick="document.location='{$path}htmls/seccion-enlaces.html'">ENLACES</td>
	  </xsl:otherwise>
  </xsl:choose>
		  
  <xsl:choose>
	  <xsl:when test="$section='documentacion'">  
  		<td class="menu_superior_on" onclick="document.location='{$path}htmls/seccion-documentacion.html'">DOCUMENTACI�N</td>
	  </xsl:when>
	  <xsl:otherwise>
		<td class="menu_superior_off" onmouseover="this.className='menu_superior_on'" onmouseout="this.className='menu_superior_off'" onclick="document.location='{$path}htmls/seccion-documentacion.html'">DOCUMENTACI�N</td>
	  </xsl:otherwise>
  </xsl:choose>
		
  <xsl:choose>
	  <xsl:when test="$section='mundo'">  
  		<td class="menu_superior_on" onclick="document.location='{$path}htmls/participar.html'">MUNDO TLDP-ES</td>  
	  </xsl:when>
	  <xsl:otherwise>
		<td class="menu_superior_off" onmouseover="this.className='menu_superior_on'" onmouseout="this.className='menu_superior_off'" onclick="document.location='{$path}htmls/participar.html'">MUNDO TLDP-ES</td>  
	  </xsl:otherwise>
  </xsl:choose>	
 </tr>
</table>
</div>

<xsl:text disable-output-escaping="yes">		
&lt;div id="principal"&gt;

&lt;table border="0" width="100%"&gt;
	&lt;tr&gt;
</xsl:text>

	<td width="150"  valign="top">
			<div class="menu_izquierda" valign="top">
			
<!-- menu's -->	
			 <xsl:choose>
			 
			 <!-- proyectos -->
			 
			 	<xsl:when test="$section='proyectos'">
					<table width="100%" border="0" cellspacing="2" cellpadding="0">
					 <tr>
					 	<td class="menu_izquierda_cabecera" height="25" valign="top">PROYECTOS TLDP-ES</td>
					 </tr>
					 <tr>
					  	<td></td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/manuales.html'">
						  Manuales</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/cursos.html'">
						  Cursos</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/tutoriales.html'">
						  Tutoriales</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/faq.html'">
						  Preguntas Frecuentes</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/presentaciones.html'">
						  Conferencias</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/articulos.html'">
						  Art�culos T�cnicos</td>
					 </tr>					 
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/articulos-period.html'">
						  Art�culos de Prensa</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/estandares.html'">
						  Est�ndares</td>
					 </tr>
					 <tr>
					  	<td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/nulies.html'">
						N�cleo Linux Espa�ol</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='/Postgresql/web'">
						  PostgreSQL</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/orca.html'">
						  Glosario (ORCA)</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/licencias.html'">
						  Licencias Libres</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/universitarios.html'">
						  Universitarios</td>
					 </tr>
					 </table>
			 	</xsl:when>
				

				<!-- proyectos replicas -->
				
			 	<xsl:when test="$section='replicas'">
					<table width="100%" border="0" cellspacing="2" cellpadding="0">
					 <tr>
					 	<td class="menu_izquierda_cabecera" height="25" valign="top">Proyectos Replicados</td>
					 </tr>
					 <tr>
					  	<td></td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='/Cervantex/Cervantex'">
						  Cervantex: Tex/Latex en espa�ol</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/coes.html'">
						  COES - ISpell en espa�ol</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/debian.html'">
						  Debian en espa�ol</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/gnome-es.html'">
						  Gnome-es</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/comos.html'">
						  INFLUSG - C�MOs</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='/LinuxFocus/pub/mirror/LinuxFocus/Castellano'">
						  LinuxFocus en espa�ol</td>
					 </tr>					 
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/pameli.html'">
						  P�ginas del Manual en espa�ol</td>
					 </tr>
					 </table>
			 	</xsl:when>				

				<!-- secci�n servicios -->
				
			 	<xsl:when test="$section='servicios'">
					<table width="100%" border="0" cellspacing="2" cellpadding="0">
					 <tr>
					 	<td class="menu_izquierda_cabecera" height="25" valign="top">Proyectos Replicados</td>
					 </tr>
					 <tr>
					  	<td></td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/servicios-editoriales.html'">
						  Servicios Editoriales</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/replicas.html'">
						  R�plicas</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/lucas-desarrollo.html'">
						  Lucas Desarrollo (I+D)</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/listas.html'">
						  Listas de Correo</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/cvs.html'">
						  Servidor CVS</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/bugzilla.html'">
						  Servidor Bugzilla</td>
					 </tr>					 
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/irc.html'">
						  #tldp-es</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='http://www.hispalinux.es/modules.php?op=modload&#38;name=phpWiki&#38;file=index&#38;pagename=HispaLinuxLuCAS'">
						  wiki</td>
					 </tr>					 
					 </table>
			 	</xsl:when>	
				

				<!-- proyectos replicas -->
				
			 	<xsl:when test="$section='replicas'">
					<table width="100%" border="0" cellspacing="2" cellpadding="0">
					 <tr>
					 	<td class="menu_izquierda_cabecera" height="25" valign="top">Proyectos Replicados</td>
					 </tr>
					 <tr>
					  	<td></td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='/Cervantex/Cervantex'">
						  Cervantex: Tex/Latex en espa�ol</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/coes.html'">
						  COES - ISpell en espa�ol</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/debian.html'">
						  Debian en espa�ol</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/gnome-es.html'">
						  Gnome-es</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/comos.html'">
						  INFLUSG - C�MOs</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='/LinuxFocus/pub/mirror/LinuxFocus/Castellano'">
						  LinuxFocus en espa�ol</td>
					 </tr>					 
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/pameli.html'">
						  P�ginas del Manual en espa�ol</td>
					 </tr>
					 </table>
			 	</xsl:when>				

				<!-- secci�n 'mundo' -->
				
			 	<xsl:when test="$section='mundo'">
					<table width="100%" border="0" cellspacing="2" cellpadding="0">
					 <tr>
					 	<td class="menu_izquierda_cabecera" height="25" valign="top">Proyectos Replicados</td>
					 </tr>
					 <tr>
					  	<td></td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/novedades.html'">
						  Novedades</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/plan.html'">
						  Plan</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/participar.html'">
						  Participar</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='/FAQ/FAQ-LuCAS/FAQ-LuCAS.html'">
						  Preguntas Frecuentes</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='/webalizer'">
						  Estad�ticas [oficiales]</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='http://es.nedstat.net/cgi-bin/viewstat?name=plucas'">
						  Estad�sticas</td>
					 </tr>					 
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='http://web.archive.org/web/*/http://lucas.hispalinux.es'">
						  TLDP-ES en la historia</td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='/web-lucas/wml--fixme'">
						  C�digo Fuente</td>
					 </tr>					 
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/quienes.html'">
						  Qui�nes somos</td>
					 </tr>					 
					 <tr>
						  <td class="menu_izquierda_off" onmouseover="this.className='menu_izquierda_on'" onmouseout="this.className='menu_izquierda_off'" onclick="document.location='{$path}htmls/creditos.html'">
						  Agradecimientos</td>
					 </tr>					 					 
					 </table>
			 	</xsl:when>	

				<!-- secci�n 'index' -->
				
			 	<xsl:when test="$section='inicio'">
					<table width="100%" border="0" cellspacing="2" cellpadding="0">
					 <tr>
					 	<td class="menu_izquierda_cabecera" height="25" valign="top">Inicio</td>
					 </tr>
					 <tr>
					  	<td></td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off">
						  �Bienvenido a TLDP-ES!</td>
					 </tr>
					 </table>
				</xsl:when>

			 	<xsl:when test="$section='otros'">
					<table width="100%" border="0" cellspacing="2" cellpadding="0">
					 <tr>
					 	<td class="menu_izquierda_cabecera" height="25" valign="top">Otros</td>
					 </tr>
					 <tr>
					  	<td></td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off">
                                                    Otros proyectos importantes
                                                  </td>
					 </tr>
					 </table>
				</xsl:when>

			 	<xsl:when test="$section='noticias'">
					<table width="100%" border="0" cellspacing="2" cellpadding="0">
					 <tr>
					 	<td class="menu_izquierda_cabecera" height="25" valign="top">Noticias</td>
					 </tr>
					 <tr>
					  	<td></td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off">
                                                    Principales Sitios de Noticias
                                                  </td>
					 </tr>
					 </table>
				</xsl:when>
                                
			 	<xsl:when test="$section='enlaces'">
					<table width="100%" border="0" cellspacing="2" cellpadding="0">
					 <tr>
					 	<td class="menu_izquierda_cabecera" height="25" valign="top">Enlaces</td>
					 </tr>
					 <tr>
					  	<td></td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off">
                                                    Enlaces que podr�an interesarte
                                                  </td>
					 </tr>
					 </table>
				</xsl:when>

			 	<xsl:when test="$section='documentacion'">
					<table width="100%" border="0" cellspacing="2" cellpadding="0">
					 <tr>
					 	<td class="menu_izquierda_cabecera" height="25" valign="top">Documentaci�n</td>
					 </tr>
					 <tr>
					  	<td></td>
					 </tr>
					 <tr>
						  <td class="menu_izquierda_off">
                                                    Sitios de documentaci�n (en ingl�s).
                                                  </td>
					 </tr>
					 </table>
				</xsl:when>

				<xsl:otherwise>
					<table width="100%" border="0" cellspacing="2" cellpadding="0">
                                                <tr>
                                                    <td class="menu_izquierda_cabecera" height="25" valign="top">FIXME</td>
                                                </tr>
						<tr>
							<td width="100%">TLDP-ES: Portal de documentaci�n libre castellana.</td>
						</tr>
					</table>
				</xsl:otherwise>
			</xsl:choose>
			<!-- fin de los menu's -->

			</div>
		</td>
			<xsl:text disable-output-escaping="yes">		
					&lt;td width="425"  valign="top" &gt;
					
				
				
					&lt;!-- Fin Cabecera comun --&gt;
					&lt;!-- Cuerpo de pagina --&gt;
				</xsl:text>		
</xsl:template>


<xsl:template match="footers">
	<xsl:variable name="path" select="@path"/>
	
	<xsl:text disable-output-escaping="yes">
			

		&lt;!-- Fin cuerpo de pagina --&gt;
		&lt;!-- Pie de pagina --&gt;
	</xsl:text>
			<div id="menu_inferior">
				<a href="{$path}htmls/quienes.html" class="menu_inferior">�QUIENES SOMOS?</a>
				 | 
				<a href="{$path}htmls/replicas.html" class="menu_inferior">SITIOS R�PLICA</a>
				 | 
				<a href="{$path}htmls/participar.html" class="menu_inferior">PARTICIPE</a>
				 | 
				<a href="#" class="menu_inferior">(c) COPYRIGHT</a>
			</div>
		<xsl:text disable-output-escaping="yes">		
		&lt;/div&gt;
	&lt;/td&gt;
		</xsl:text>
		
		<td width="130"  valign="top">
			<div class="menu_derecha">
				<div id="buscar">
					<form action="http://www.google.com/custom" method="get">
                                            <input type="text" name="q" size="16" maxlength="255" value="" />
                                            <input type="hidden" name="cof" value="T:#000000;LW:506;ALC:#04AFFF;L:http://lucas.hispalinux.es/icons/tldp-es-lucas.png;LC:#3333FF;LH:69;BGC:white;AH:center;VLC:#04AFFF;AWFID:df97137930861224;" />
                                            <input type="hidden" name="domains" value="lucas.hispalinux.es" />
                                            <input type="hidden" name="sitesearch" value="lucas.hispalinux.es" />
                                            <input type="submit" value="buscar"/>
					</form>
				</div>
				<div id="minibanners">
						<a href="http://linux.alojate.net" class="simple"><img src="{$path}images/logo-eurociber.png" class="minibanner" /></a><br />
						<img src="{$path}images/banner_mini02.gif" class="minibanner" />
				</div>
				<div id="mascota">
					<img src="{$path}images/mascota.gif" class="mascota" />
				</div>
			</div>
		</td>
<xsl:text disable-output-escaping="yes">
	&lt;/tr&gt;
&lt;/table&gt;
</xsl:text>


</xsl:template>

</xsl:stylesheet>
