#!/usr/bin/env node
// Esempio di script Node.js
// Il shebang #!/usr/bin/env node cerca node nel PATH

console.log("=== Esempio di script Node.js ===");
console.log("Ciao dal mondo Node.js!");
console.log(`Script: ${process.argv[1]}`);
console.log(`Numero di argomenti: ${process.argv.length - 2}`);

// Versione Node.js
console.log(`Versione Node.js: ${process.version}`);
console.log(`Piattaforma: ${process.platform}`);

// Argomenti (process.argv[0] è node, argv[1] è lo script)
const args = process.argv.slice(2);
if (args.length > 0) {
    console.log("Argomenti forniti:");
    args.forEach((arg, index) => {
        console.log(`  ${index + 1}. ${arg}`);
    });
} else {
    console.log("Nessun argomento fornito");
}

// Array e metodi
const numeri = [1, 2, 3, 4, 5];
const doppi = numeri.map(n => n * 2);
console.log(`Numeri: ${numeri}`);
console.log(`Doppi: ${doppi}`);

// Oggetti
const info = {
    nome: 'Node.js',
    tipo: 'Runtime JavaScript',
    anno: 2009
};
console.log("Informazioni:");
Object.entries(info).forEach(([chiave, valore]) => {
    console.log(`  ${chiave}: ${valore}`);
});

// Arrow functions e filtraggio
const pari = numeri.filter(n => n % 2 === 0);
console.log(`Numeri pari: ${pari}`);

// Data e ora
const ora = new Date().toISOString();
console.log(`Data e ora: ${ora}`);

process.exit(0);
