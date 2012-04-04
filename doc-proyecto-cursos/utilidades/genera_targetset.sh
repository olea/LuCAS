#!/bin/sh
#
# Teniendo los "target db", este script compila el targetset
# 
# Lucas Di Pentima - 06/10/2002

OUTF=database.xml

# Primero chequeamos que me est�n ejecutando desde el
# directorio ra�z del repositorio
if [ -d contenido ]; then
    # Imprimimos pre�mbulo
    echo '<?xml version="1.0"?>' > $OUTF
    echo '<!DOCTYPE targetset SYSTEM' >> $OUTF
    echo '    "utilidades/xsl/docbook-xsl/common/targetdatabase.dtd">' >> $OUTF
    echo '' >> $OUTF
    echo '<targetset>' >> $OUTF

    for i in `find contenido/ -name "*.db"`
      do
      echo "Cargando $i..."
      id=`echo $i | awk -F . '{print $1}'`
      
      # Imprimo una entrada por target db existente
      echo "    <document targetdoc=\"$id\"" >> $OUTF
      echo "      baseuri=\"\">" >> $OUTF
      echo '        <xi:include xmlns:xi="http://www.w3.org/2001/XInclude"' >> $OUTF
      echo "          href=\"$i\"/>" >> $OUTF
      echo '    </document>' >> $OUTF

    done

    # Imprimimos fin de archivo
    echo '' >> $OUTF
    echo '</targetset>' >> $OUTF

else
    echo "ATENCI�N: �Debes ejecutarme desde el directorio ra�z de tu copia CVS!"
fi