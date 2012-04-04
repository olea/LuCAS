#!bin/bash

FILE_NAME=`echo "$1" | awk -F '.' '{print $1}'`

cat << endl > temp.html 
<?xml version="1.0" encoding="iso-8859-1"?>
endl

sed -e '/<?xml version.*?>/d' -e '/<\!D.*/,/">/d' -e '/^<\!--.*$/,/^<\!-- Cuerpo.*$/d' -e '/<head>/,/<\/head>/s/<\/head>/&\<body>/' -e '/^<\!-- Fin cuerpo.*$/,/<\/body>/d' -e 's/<\/html>/<\/body>\<\/html>/' $1 >> temp.html

tidy -m -config config temp.html

sed -e '/<\!D.*/,/">/d' -e 's/<html .*>/<html>/' temp.html > temp1.html 
mv temp1.html temp.html  
sed -e 's/\&ntilde;/�/g' -e 's/\&aacute;/�/g' -e 's/\&eacute;/�/g' -e 's/\&iacute;/�/g' -e 's/\&oacute;/�/g' -e 's/\&uacute;/�/g' -e 's/\&ordf;/�/g' -e 's/&iuml;/�/g' -e 's/\&iexcl;/�/g' -e 's/\&Aacute;/�/g' -e 's/\&Eacute;/�/g' -e 's/\&Iacute;/�/g' -e 's/\&Oacute;/�/g' -e 's/\&Uacute;/�/g' -e 's/\&iquest;/�/g' -e 's/\&laquo;/�/g' -e 's/\&raquo;/�/g' -e 's/\&uuml;/�/g'  -e 's/\&icirc;/�/g' -e 's/\&nbsp;/ /g' -e 's/\&shy;//g' -e 's/\&ordm;/�/g' -e 's/\&sect;/�/g' -e 's/\&ccedil;/�/g' -e 's/\&middot;/�/g' -e  's/\&auml;/�/g' temp.html > temp.xml 
mv temp.xml "$FILE_NAME".xml
