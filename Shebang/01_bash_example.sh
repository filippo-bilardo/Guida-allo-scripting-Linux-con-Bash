#!/bin/bash
# Esempio di script Bash
# Il shebang #!/bin/bash indica che questo script deve essere eseguito con Bash

echo "=== Esempio di script Bash ==="
echo "Ciao dal mondo Bash!"
echo "Script: $0"
echo "Numero di argomenti: $#"
echo "Argomenti: $@"

# Variabili
nome="Bash"
versione=$BASH_VERSION

echo "Shell: $nome"
echo "Versione: $versione"

# Strutture di controllo
if [ $# -gt 0 ]; then
    echo "Hai fornito degli argomenti:"
    for arg in "$@"; do
        echo "  - $arg"
    done
else
    echo "Nessun argomento fornito"
fi

# Array
frutti=("mela" "banana" "arancia")
echo "Frutti: ${frutti[@]}"

exit 0
