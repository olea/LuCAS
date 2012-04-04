#!/usr/bin/perl -w
# comprueba-comos v0.1 Marzo 2000
# (c) 2000 Javier Fern�ndez-Sanguino Pe�a
# Distribuido bajo licencia GNU, ver http://www.gnu.org
# -------------------------------------------------------------
# Parser para comprobar errores t�picos de documentos de INSFLUG
# Esta basado en las reglas establecidas por el grupo coordinador
# de insflug y que puede encontrar en http://www.insflug.org/colaboracion/estilo/
# M�todo de uso: 'comprueba-comos documento.sgml'

# ENTRADA
# Un documento sgml. Puede utilizar otro tipo de documentos pero los
# errores de formato est�n preparado para este tipo de documentos

# SALIDA
# La salida se presenta de una forma uniforme:
# tipo de error:l�nea del documento: descripci�n del error
# Actualmente hay tres tipos de errores
# - WF -> de formato
# - WP -> de puntuaci�n
# - WG -> gramaticales
# Si desea ver un tipo determinado de error hagalo de la siguiente forma
# 'insflug-check <documento.sgml |grep ^tipo_de_error'

# AHACER: 
# - probar las expresiones de forma intensiva sobre documentos
# - a�adir opciones de l�nea de comandos (--help, --verbose, etc..)
# - a��dir m�s expresiones regulares para manejar m�s errores t�picos
# - posibles mejoras: si spell est� instalado ejecutarlo sobre la documentaci�n
# definiendo un ratio aceptable de palabras del documento (wc -w) y
# errores detectados por spell (spell documento|sort|uniq -iu |wc -w para
# ver las palabras �nicas y sin el sort ni uniq para verlas todas) se podr�a llegar
# a ver r�pidamente documentos que est�n mal escritos. 
# El problema aqu�, sin embargo, es que los documentos generalmente tendr�n
# muchas cosas en ingl�s que no son errores (per se), como por ejemplo salidas
# del tipo <code>

# Comprobaciones previas
$file = $ARGV[0];
if ( ! -f $file ) {
	die "No puedo encontrar $file\n";
}
print "Fichero a comprobar: $file\n";

# Lista de errores
# NOTA: Se han dejado suficientes numeros sin asignar como para hacer
# nuevos tests en cada grupo de errores
#	Errores de Formato (1-50)

$errores[1]="Longitud mayor de 74 caracteres";
$errores[2]="Dejar l�nea en blanco entre parrafo y parrafo en lugar de <P>";
$errores[3]="Separar con l�neas en blanco marcas espec�ficas";
$errores[4]="No usar sangr�as en el texto";
$errores[5]="Toda URI se debe escribir con letra de anchura fija";
$errores[6]="Los urls deben repetirse en el atributo name";
$errores[7]="No se puede emplear el m�todo abreviado <xx/xx/";
$errores[8]="Es recomendable usar siempre el entorno <tscreen> en lugar de <code>";
#	Errores de puntuaci�n (51-100)
$errores[51]="Usar comillas castellanas �� en lugar de \"\" para palabras"; 
# 	Errores gramaticales (101-150)
$errores[101]="Tratar al lector de vd. y no de tu";
$errores[102]="Hablar de idioma castellano en lugar de espa�ol";
$errores[103]="El comienzo de un parrafo debe estar en may�sculas";
$errores[104]="Parece haber demasiados errores ortogr�ficos\n\to quiz�s es que hay demasiada palabras en ingl�s/c�digo con respecto al texto";


$previous_blank = 0;
$previous_section = 0;
$line_number = 0;

open (FILE, "$file") || die "No puedo abrir $file: $!\n";
while ($line=<FILE>) {
	chomp $line;
	$line_number++;
	$line =~ s/\s{2,}//g; # Eliminar espacios en blanco innecesarios
	
	#Errores de formato
	avisoFormato($line_number, 1) if (length($line) > 74);
	avisoFormato($line_number, 2) if ($line =~ /^\<P\>/i and !$previous_blank and !$previous_section);
	# Tags de fecha/autor, deber�a aplicarlo sobre algunos tipos fijos (date,author..)
	avisoFormato($line_number, 3) if ($line =~ /^\<(\w+)\>/ and lc($1) ne "p" 
			and lc($1) ne "item" and !$previous_blank);
	avisoFormato($line_number, 4) if ($line =~ /^\t/ );
# Esta comprobaci�n todav�a no se hace bien
#	avisoFormato($line_number, 5) if ($line !~ /\<tt\>\w+?:\/\/.*?\<\/tt\>/i and $line =~ /.*?:\/\/.*?/i );
	avisoFormato($line_number, 6) if ($line =~ /\<htmlurl\s+url=".*?"\s+\>/ );
	avisoFormato($line_number, 7) if ($line =~ /\<\w+\/\w+\// );
	avisoFormato($line_number, 8) if ($line =~ /\<code\>/ );

	#Busqueda de errores de puntuaci�n
	# Intenta localizar unas comillas que no formen parte de un tag
	avisoFormato($line_number, 51) if ($line =~ /"(\w+)\"/ and $line !~ /="$1"/);

	#B�squeda de errores de gram�tica
	# Intenta localizar alguna referencia a tu en lugar de vd.
	avisoFormato ($line_number, 101) if ($line =~ /\stu\s/ or $line =~ /\st�\s/);
	avisoFormato ($line_number, 102) if ($line =~ /espa�ol/ );
	avisoFormato ($line_number, 103) if ($line =~ /^(\w)/ and uc($1) ne $1 and $previous_blank);
	
	$previous_blank = 0;
	$previous_section = 0;
	$previous_blank = 1 if ($line eq "");
	$previous_section = 1 if ($line =~ /^<sect.*?>/i);
}


# Aqu�  van las comprobaciones de spell
# Observese que el diccionario por defecto debe ser el de espa�ol
if ( -x '/usr/bin/spell' ) {
	print "Comprobando ortograf�a del documento utilizando 'spell'\n";
	my $palabras =  `wc -w $file`;
	my $errores_spell = `spell $file |wc -w`;
	chomp $palabras;
	chomp $errores_spell;
	$palabras =~ s/(\d+)\s.*$/$1/;
	my $ratio = $errores_spell * 100 / $palabras;
	print "Palabras: $palabras, Posibles Errores: $errores_spell, Ratio= $ratio%\n";
	avisoFormato ($line_number, 104)   if ( $ratio > 30 ) ;
}


exit 0;


sub avisoFormato {
	my ($number_line, $warning) = (@_);
	my $type = "W";
	$type .= "F" if $warning < 51; # Errores de Formato
	$type .= "P" if $warning < 101 and $warning > 50; # Errores de puntuaci�n
	$type .= "G" if $warning < 151 and $warning > 100; # Errores de gram�tica
	print "$type:$number_line:$errores[$warning]\n";
}
