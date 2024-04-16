# Números: Integer, float
# Boolean - True, false or nil
# Texto: String, Symbol
# Array
# Hash - Coleção de dados {}/ semelhante ao array

# Os tipos dos dados são dinâmicos, ou seja, não precisamos definir o seu tipo

nInteiro = 3
puts nInteiro.to_s + "\nQual o tipo desse dado? " # .to_s = toString - Método para transformar em string para exibição
puts nInteiro.class # .class traz o tipo do dado

nFloat = 8.5
puts nFloat.to_s + "\nQual o tipo desse dado? " # .to_s = toString - Método para transformar em string para exibição
puts nFloat.class # .class traz o tipo do dado

bol = true
bol2 = nil # nil = ausência de valor, é tratado como falso pelo ruby

if bol2 
    puts "bol2 é true"
else
    puts "bol2 é false" 
end
puts bol2.class # Saida: NilClass, apesar de ser tratado como false, seu tipo é nil

nome = "Lucas" # Isso é uma string
nome2 = :Lucas # Isso é um symbol

puts "#{nome} - eu sou uma string" # Interpolação de strings através de #{nome_atributo}
puts "#{nome2.to_s} - eu sou um symbol" # Symbol também precisa ser convertido para String na hora de exibir

frutas = ["Banana","Pêra","Uva","Melancia"]

for fruta in frutas do # ForEach
    puts fruta 
end

pessoa = {nome:"Lucas", idade:19} # Isso é um hash, um conjunto de valores
puts "#{pessoa[:nome]} tem #{pessoa[:idade]} anos" # Para acessarmos um valor de uma hash usamos {nome_hash[:nome_valor]}

if pessoa[:idade] > 18 
    puts "Pode tirar habilitação" 
end