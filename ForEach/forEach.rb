continuar = 1
numeros = []

while(continuar == 1)
    puts "Digite um número para inserir na lista: "
    n = gets.chomp.to_i
    numeros.push(n)
    puts "Deseja continuar inserindo números na lista? \n1 - Sim\n2 - Não"
    continuar = gets.chomp.to_i 
end
puts "Números da lista: "

for i in numeros do
    puts i 
end

puts "Números pares da lista: "

for i in numeros do 
    if i % 2 == 0 
        puts i 
    end
end 

puts "Números ímpares da lista: "

for i in numeros do 
    if i % 2 != 0
        puts i 
    end 
end