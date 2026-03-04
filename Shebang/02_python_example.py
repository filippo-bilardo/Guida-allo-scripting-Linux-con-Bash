#!/usr/bin/env python3
# Esempio di script Python
# Il shebang #!/usr/bin/env python3 cerca python3 nel PATH

import sys
import os
from datetime import datetime

def main():
    print("=== Esempio di script Python ===")
    print("Ciao dal mondo Python!")
    print(f"Script: {sys.argv[0]}")
    print(f"Numero di argomenti: {len(sys.argv) - 1}")
    
    # Informazioni Python
    print(f"Versione Python: {sys.version.split()[0]}")
    print(f"Directory corrente: {os.getcwd()}")
    
    # Argomenti
    if len(sys.argv) > 1:
        print("Argomenti forniti:")
        for i, arg in enumerate(sys.argv[1:], 1):
            print(f"  {i}. {arg}")
    else:
        print("Nessun argomento fornito")
    
    # Lista e comprensione
    numeri = [1, 2, 3, 4, 5]
    quadrati = [n**2 for n in numeri]
    print(f"Numeri: {numeri}")
    print(f"Quadrati: {quadrati}")
    
    # Data e ora
    ora_corrente = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    print(f"Data e ora: {ora_corrente}")

if __name__ == "__main__":
    main()
