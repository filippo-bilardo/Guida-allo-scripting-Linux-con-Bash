#!/bin/sh
# Esempio di script Shell POSIX
# Il shebang #!/bin/sh usa la shell standard POSIX (più portabile di Bash)

echo "=== Esempio di script Shell POSIX ==="
echo "Ciao dal mondo Shell!"
echo "Script: $0"
echo "Numero di argomenti: $#"

# Nota: /bin/sh è la shell POSIX standard, più portabile ma con meno funzionalità di Bash

# Argomenti
if [ $# -gt 0 ]; then
    echo "Argomenti forniti:"
    i=1
    for arg in "$@"; do
        echo "  $i. $arg"
        i=$((i + 1))
    done
else
    echo "Nessun argomento fornito"
fi

# Variabili
nome="POSIX Shell"
echo "Shell: $nome"

# Strutture di controllo
numero=5
if [ $numero -gt 3 ]; then
    echo "Il numero $numero è maggiore di 3"
fi

# Loop
echo "Numeri da 1 a 5:"
i=1
while [ $i -le 5 ]; do
    printf "%d " $i
    i=$((i + 1))
done
echo ""

# Case
giorno="lunedi"
case $giorno in
    lunedi|martedi|mercoledi|giovedi|venerdi)
        echo "Giorno lavorativo"
        ;;
    sabato|domenica)
        echo "Fine settimana"
        ;;
    *)
        echo "Giorno non riconosciuto"
        ;;
esac

exit 0
