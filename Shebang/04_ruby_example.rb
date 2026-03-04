#!/usr/bin/env ruby
# Esempio di script Ruby
# Il shebang #!/usr/bin/env ruby cerca ruby nel PATH

puts "=== Esempio di script Ruby ==="
puts "Ciao dal mondo Ruby!"
puts "Script: #{$0}"
puts "Numero di argomenti: #{ARGV.length}"

# Versione Ruby
puts "Versione Ruby: #{RUBY_VERSION}"

# Argomenti
if ARGV.length > 0
    puts "Argomenti forniti:"
    ARGV.each_with_index do |arg, index|
        puts "  #{index + 1}. #{arg}"
    end
else
    puts "Nessun argomento fornito"
end

# Array
frutti = ['mela', 'banana', 'arancia']
puts "Frutti: #{frutti.join(', ')}"

# Hash
persona = {
    nome: 'Ruby',
    tipo: 'Linguaggio',
    anno: 1995
}
puts "Informazioni:"
persona.each do |chiave, valore|
    puts "  #{chiave}: #{valore}"
end

# Range e iterazione
puts "Numeri da 1 a 5:"
(1..5).each { |n| print "#{n} " }
puts ""

# Blocchi e metodi
numeri = [1, 2, 3, 4, 5]
quadrati = numeri.map { |n| n ** 2 }
puts "Numeri: #{numeri.inspect}"
puts "Quadrati: #{quadrati.inspect}"

exit 0
