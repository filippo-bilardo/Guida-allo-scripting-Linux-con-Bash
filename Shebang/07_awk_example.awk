#!/usr/bin/awk -f
# Esempio di script AWK
# Il shebang #!/usr/bin/awk -f indica che questo script deve essere eseguito con AWK
# L'opzione -f indica che il codice è in un file

BEGIN {
    print "=== Esempio di script AWK ==="
    print "Ciao dal mondo AWK!"
    print "AWK è specializzato nell'elaborazione di testo e dati strutturati"
    print ""
    
    # Variabili
    nome = "AWK"
    anno = 1977
    print "Nome:", nome
    print "Anno:", anno
    print ""
    
    # Array
    frutti[1] = "mela"
    frutti[2] = "banana"
    frutti[3] = "pera"
    
    print "Frutti:"
    for (i = 1; i <= 3; i++) {
        print "  " i ". " frutti[i]
    }
    print ""
    
    # Esempio di elaborazione dati
    print "Elaborazione di una lista di numeri:"
    numeri = "10 20 30 40 50"
    split(numeri, arr, " ")
    
    somma = 0
    for (i = 1; i <= length(arr); i++) {
        somma += arr[i]
    }
    
    print "Numeri:", numeri
    print "Somma:", somma
    print "Media:", somma / length(arr)
    print ""
    
    # Pattern matching
    testo = "Hello World 2024"
    if (testo ~ /[0-9]+/) {
        match(testo, /[0-9]+/)
        print "Numero trovato nel testo:", substr(testo, RSTART, RLENGTH)
    }
    print ""
    
    print "--- Usa questo script su un file di testo per vedere AWK in azione ---"
    print "Esempio: ./07_awk_example.awk /etc/passwd"
}

# Elabora ogni riga del file di input
NR > 0 {
    print "Riga " NR ": " $0
    # Mostra solo le prime 5 righe
    if (NR >= 5) {
        exit
    }
}

END {
    if (NR > 0) {
        print ""
        print "Elaborate " NR " righe dal file"
    }
}
