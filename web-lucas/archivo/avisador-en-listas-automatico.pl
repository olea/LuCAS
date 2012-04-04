#!/usr/bin/perl
#
# Este programa genera un aviso de novedades con el mismo algoritmo que el
# c�digo empotrado de index.wml pero, en este caso, apto para ser enviado,
# v�a correo electr�nico, a foros de discusi�n. Dichos foros est�n
# configurados en el fichero listas-de-correo.conf, as� como los textos de
# los mensajes y los t�tulos. Las noticias, como siempre, estar�n en el
# fichero novedades.conf.


sub borra_marcas_html {
# Esta funci�n toma como par�metro una cadena y devuelve la misma sin marcas
# HTML, aun si �stas no est�n completas dentro de la misma l�nea.
#
	$_=$_[0];
	TACA: {
		while (0 != s/<[^>]*>//) {};
		if ( 0 < /</ ) {
			s/<.*$//;
			redo TACA;
		}
		if ( 0 < />/ ) {
			s/^[^>]*>//;	
			redo TACA;
		}
	}
	return $_;
}


open (FICHERO , "listas-de-correo.conf");
LECTURA: while ($CAD=<FICHERO>) {
        if (($CAD !~ /^#/) && ($CAD ne "\n")) {
		($CAD =~ /^TEXTO-H/) && do {
			(defined $TITULO_H) && die "No puede definirse dos veces TEXTO-H.";
			# Proceso el t�tulo:
			$TITULO_H=substr($CAD,8);
			# Y ahora leo el texto:
			while ($CAD=<FICHERO>) {
				if ($CAD !~ /^#/) {
					if ($CAD=~/(^HISPANA)|(^INTERNACIONAL)|(^TEXTO-I)/) { 
						redo LECTURA;
					} else { 
						($CAD=~/^TEXTO-H/) && die "Definici�n incorrecta de TEXTO-H.";
						chop $CAD; push @TEXTO_H,$CAD;
					}
				}
			} 
		};
		($CAD =~ /^TEXTO-I/) && do {
			(defined $TITULO_I) && die "No puede definirse dos veces TEXTO-I.";
			# Proceso el t�tulo:
			$TITULO_I=substr($CAD,8);
			# Y ahora leo el texto:
			while ($CAD=<FICHERO>) {
				if ($CAD !~ /^#/) {
					if ($CAD=~/(^HISPANA)|(^INTERNACIONAL)|(^TEXTO-H)/) { 
						redo LECTURA;
					} else { 
						($CAD=~/^TEXTO-I/) && die "Definici�n incorrecta de TEXTO-I.";
						chop $CAD; push @TEXTO_I,$CAD;
					}
				}
			} 
		};
		($CAD =~ /^HISPANA/) && do {
			split ' ', $CAD;
			# Proceso el URL:
			($_[1] =~ /^mailto:/) && do {
				@CAD = split ':', $_[1];
				push @HISPANA,$CAD[1];
			}
		};
		($CAD =~ /^INTERNACIONAL/) && do {
			split ' ', $CAD;
			# Proceso el URL:
			($_[1] =~ /^mailto:/) && do {
				@CAD = split ':', $_[1];
				push @INTERNACIONAL,$CAD[1];
			}
		};	
	}		
}

# Controlamos una correcta configuraci�n:
#
(!defined @TEXTO_H) && die "No se especific� el texto en espa�ol.";
(!defined @HISPANA) && die "No se especificaron foros hispanos.";
(defined @INTERNACIONAL) && (!defined @TEXTO_I) && die "Se especificaron foros internacionales pero no el texto internacional.";
	
# 	Lectura de las noticias (es el c�digo usado para imprimir con las
# marcas HTML pero modificado para filtrar precisamente estas marcas.

# N�mero de noticias que queremos publicar, por cada una ir� decrementando
#
$Cont=5;
open (FICHERO , "novedades.conf");
while (($Cont>0) && ($CAD=<FICHERO>)) {
        if (($CAD !~ /^#/) && ($CAD ne "\n")) {
		$Cont--;
		chop($CAD);
		push @NOVEDADES,$CAD;
		push @NOVEDADES," \n";
		$FLAG=1;
		while ($FLAG && ($CAD=<FICHERO>)) {
			if (($CAD !~ /^#/) && ($CAD ne "\n")) {
				$FLAG=0;
			}
		} 
		$FLAG=1;
		do {
			if (($CAD !~ /^#/) && ($CAD ne "\n")) {
				$CAD=borra_marcas_html $CAD;
 				push @NOVEDADES, $CAD; 
			} else {
				push @NOVEDADES," \n";
				$FLAG=0;
			}
		} while ($FLAG && ($CAD=<FICHERO>))
	}
}

# El siguiente c�digo imprime el texto de los mensajes que habr�a que enviar
# a cada uno de los foros de marras. Falta el c�digo que se encargue de
# dicho env�o puesto que a�n no est� decidida la forma en la que se har�. La
# l�nea de almohadillas es simplemente un separador. Debe ser eliminada
# cuando se acabe el c�digo.
#
foreach (@HISPANA) {
	print "To: $_\n";
	print "Subject: $TITULO_H\n";
	foreach (@TEXTO_H) {
        	print "$_\n";
	}
	foreach (@NOVEDADES) {
        	print "$_";
	}
	
	print "########################################\n";
	
};
if (defined @INTERNACIONAL) {
	foreach (@INTERNACIONAL) {
		print "To: $_\n";
		print "Subject: $TITULO_I\n";
        	foreach (@TEXTO_I) {
                	print $_,"\n";
	        }
		print "\n...........................................\n";
		foreach (@TEXTO_H) {
        		print "$_\n";
		}
		foreach (@NOVEDADES) {
        		print "$_";
		}
		print "########################################\n";
	}
}


