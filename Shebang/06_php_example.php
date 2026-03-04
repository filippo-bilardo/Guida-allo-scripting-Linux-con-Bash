#!/usr/bin/env php
<?php
// Esempio di script PHP
// Il shebang #!/usr/bin/env php cerca php nel PATH

echo "=== Esempio di script PHP ===\n";
echo "Ciao dal mondo PHP!\n";
echo "Script: " . $argv[0] . "\n";
echo "Numero di argomenti: " . (count($argv) - 1) . "\n";

// Versione PHP
echo "Versione PHP: " . PHP_VERSION . "\n";

// Argomenti
if (count($argv) > 1) {
    echo "Argomenti forniti:\n";
    for ($i = 1; $i < count($argv); $i++) {
        echo "  $i. " . $argv[$i] . "\n";
    }
} else {
    echo "Nessun argomento fornito\n";
}

// Array
$animali = array('gatto', 'cane', 'uccello');
echo "Animali: " . implode(', ', $animali) . "\n";

// Array associativo
$linguaggio = [
    'nome' => 'PHP',
    'tipo' => 'Linguaggio di scripting',
    'anno' => 1995
];
echo "Informazioni:\n";
foreach ($linguaggio as $chiave => $valore) {
    echo "  $chiave: $valore\n";
}

// Funzioni
function quadrato($n) {
    return $n * $n;
}

$numeri = [1, 2, 3, 4, 5];
$quadrati = array_map('quadrato', $numeri);
echo "Numeri: " . implode(', ', $numeri) . "\n";
echo "Quadrati: " . implode(', ', $quadrati) . "\n";

// Data e ora
echo "Data e ora: " . date('Y-m-d H:i:s') . "\n";

exit(0);
?>
