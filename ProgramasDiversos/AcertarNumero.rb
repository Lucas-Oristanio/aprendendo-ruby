puts "Olá! Vamos jogar?"

puts "Esse jogo é muito simples, você só precisa acertar o número escolhido pelo computador!"

puts "Temos 3 níveis de dificuldade\n1 - Fácil\n2 - Médio\n3 - Dificil\n4 - IMPOSSIVEL"
puts "Escolha uma dificuldade: "

def acertarNumero max,n
    i=0
    tentativa = -1
    while tentativa != n
        puts "Tente acertar o número entre 0 e #{max}"
        tentativa = gets.chomp.to_i 
        i+=1
    end
    puts "Você venceu, com #{i} tentativas"
end 

dificuldade = gets.chomp.to_i 
numero = 0
case dificuldade
when 1
    numero = rand(5)
    acertarNumero(5,numero)
when 2
    numero = rand(10)
    acertarNumero(10,numero)
when 3
    numero = rand(25)
    acertarNumero(25,numero)
when 4
    numero = rand(50)
    acertarNumero(50,numero)
else
    puts "Digite um valor válido"
end
