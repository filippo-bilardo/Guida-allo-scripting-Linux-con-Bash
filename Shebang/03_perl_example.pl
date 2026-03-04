#!/usr/bin/perl
# Esempio di script Perl
# Il shebang #!/usr/bin/perl indica che questo script deve essere eseguito con Perl

use strict;
use warnings;
use v5.10;

say "=== Esempio di script Perl ===";
say "Ciao dal mondo Perl!";
say "Script: $0";
say "Numero di argomenti: " . scalar(@ARGV);

# Versione Perl
say "Versione Perl: $^V";

# Argomenti
if (@ARGV) {
    say "Argomenti forniti:";
    foreach my $i (0..$#ARGV) {
        say "  " . ($i + 1) . ". $ARGV[$i]";
    }
} else {
    say "Nessun argomento fornito";
}

# Array
my @colori = ('rosso', 'verde', 'blu');
say "Colori: @colori";

# Hash
my %info = (
    nome => 'Perl',
    tipo => 'Linguaggio di scripting',
    anno => 1987
);
say "Informazioni:";
while (my ($chiave, $valore) = each %info) {
    say "  $chiave: $valore";
}

# Regex
my $testo = "Hello World 2024";
if ($testo =~ /(\d+)/) {
    say "Numero trovato: $1";
}

exit 0;
