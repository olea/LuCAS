#! /usr/bin/perl

# Un simple script en PERL para abrir un fichero y mantenerlo abierto.
# El motivo por el que escrib� esto era para verificar que rmmod 
# realmente no funciona cuando el dispositivo est� abierto.

open(FILE, $ARGV[0]) || die ("No puedo abrir $ARGV[0]");

print "Abierto\n";

sleep 60;
print <FILE>;

close(FILE);
