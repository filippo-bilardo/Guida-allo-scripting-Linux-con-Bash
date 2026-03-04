# Esempi di Shebang con Vari Linguaggi di Scripting

Questa cartella contiene esempi di script con diversi linguaggi di programmazione, ciascuno con il proprio **shebang** appropriato.

## Cos'è uno Shebang?

Lo **shebang** (o **hashbang**) è una sequenza di caratteri che appare all'inizio di un file di script, composta da `#!` seguita dal percorso dell'interprete da utilizzare per eseguire lo script.

Esempio: `#!/bin/bash`

## Vantaggi dello Shebang

1. **Eseguibilità diretta**: Permette di eseguire lo script direttamente (es. `./script.sh`) senza dover specificare l'interprete
2. **Portabilità**: Con `#!/usr/bin/env interprete` lo script cerca l'interprete nel PATH dell'utente
3. **Chiarezza**: Indica immediatamente quale interprete utilizzare

## Script Presenti

### 1. Bash Script ([01_bash_example.sh](01_bash_example.sh))
```bash
#!/bin/bash
```
- Shell Bash standard
- Funzionalità avanzate di Bash

### 2. Python Script ([02_python_example.py](02_python_example.py))
```python
#!/usr/bin/env python3
```
- Usa `env` per trovare Python3 nel PATH
- Più portabile tra sistemi diversi

### 3. Perl Script ([03_perl_example.pl](03_perl_example.pl))
```perl
#!/usr/bin/perl
```
- Interprete Perl diretto
- Ottimo per elaborazione testo e regex

### 4. Ruby Script ([04_ruby_example.rb](04_ruby_example.rb))
```ruby
#!/usr/bin/env ruby
```
- Usa `env` per trovare Ruby
- Linguaggio elegante e potente

### 5. Node.js Script ([05_nodejs_example.js](05_nodejs_example.js))
```javascript
#!/usr/bin/env node
```
- JavaScript lato server
- Usa Node.js come runtime

### 6. PHP Script ([06_php_example.php](06_php_example.php))
```php
#!/usr/bin/env php
```
- PHP come linguaggio di scripting CLI
- Non solo per il web!

### 7. AWK Script ([07_awk_example.awk](07_awk_example.awk))
```awk
#!/usr/bin/awk -f
```
- Linguaggio per elaborazione testo
- L'opzione `-f` indica che il codice è in un file

### 8. POSIX Shell Script ([08_sh_example.sh](08_sh_example.sh))
```sh
#!/bin/sh
```
- Shell POSIX standard
- Massima portabilità (meno funzionalità di Bash)

## Come Eseguire gli Script

### 1. Rendere lo script eseguibile
```bash
chmod +x nome_script.estensione
```

### 2. Eseguire lo script
```bash
./nome_script.estensione [argomenti]
```

### Esempio completo:
```bash
# Rendi eseguibile lo script Python
chmod +x 02_python_example.py

# Eseguilo con alcuni argomenti
./02_python_example.py arg1 arg2 arg3
```

## Differenze tra Shebang Diretti e con `env`

### Shebang Diretto
```bash
#!/bin/bash
#!/usr/bin/perl
```
**Pro**: Veloce, nessuna ricerca nel PATH  
**Contro**: Percorso fisso, meno portabile

### Shebang con `env`
```bash
#!/usr/bin/env python3
#!/usr/bin/env ruby
```
**Pro**: Cerca nel PATH, più portabile tra sistemi  
**Contro**: Leggermente più lento, dipende dal PATH dell'utente

## Prerequisiti

Per eseguire tutti gli script, assicurati di avere installati i seguenti interpreti:

```bash
# Verifica le installazioni
bash --version
python3 --version
perl --version
ruby --version
node --version
php --version
awk --version
```

## Installazione degli Interpreti (su Debian/Ubuntu)

```bash
sudo apt update
sudo apt install bash python3 perl ruby nodejs php-cli gawk
```

## Note Importanti

1. **Permessi**: Lo script deve avere i permessi di esecuzione (`chmod +x`)
2. **Line Endings**: Gli script devono usare line endings Unix (LF), non Windows (CRLF)
3. **Encoding**: Usa UTF-8 per la compatibilità internazionale
4. **PATH**: Con `env`, l'interprete deve essere nel PATH dell'utente

## Esercizi Suggeriti

1. Prova a eseguire ciascuno script con e senza argomenti
2. Modifica gli script per aggiungere nuove funzionalità
3. Confronta le differenze sintattiche tra i vari linguaggi
4. Crea un nuovo script con un linguaggio a tua scelta
5. Sperimenta con diversi tipi di shebang per lo stesso linguaggio

## Risorse Utili

- [Bash Scripting Tutorial](https://www.gnu.org/software/bash/manual/)
- [Python Documentation](https://docs.python.org/)
- [Perl Documentation](https://perldoc.perl.org/)
- [Ruby Documentation](https://www.ruby-lang.org/en/documentation/)
- [Node.js Documentation](https://nodejs.org/docs/)
- [PHP Manual](https://www.php.net/manual/)
- [AWK Manual](https://www.gnu.org/software/gawk/manual/)
