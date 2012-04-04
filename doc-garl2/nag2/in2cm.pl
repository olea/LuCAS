#!/usr/bin/perl
# Script que reemplaza las unidades de pulgadas (in) a cent�metros (cm) 
# dentro de la especificaci�n del ancho de una columna en una ocurrencia
# de ..colwidth=" ">
# Autor: Jaime Irving D�vila, Fecha: Mayo 5-2002
# Se cede al dominio p�blico

while (<>) {
    s/colwidth=(?:\"*)(.*)i(?:\"*)/"colwidth=\"".($1*2.54)."cm\""/eg;
    print;
}
