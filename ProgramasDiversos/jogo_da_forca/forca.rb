frutas = ["maça", "banana", "laranja", "uva", "morango", "abacaxi", "melancia", "pera", "kiwi", "manga"]
letras = []

def forca_fruta fruta
    palavraCerta = fruta.chars
    tamanho = fruta.size
    palavraUsuario = Array.new(tamanho," ")
    tentativas = 0
    puts "A palavra tem: #{fruta.size} letras"

    while palavraCerta != palavraUsuario
        puts "Palavra certa: #{palavraCerta}"
        puts "Palavra: #{palavraUsuario}"
        puts "Digite uma letra: "
        letra = gets.chomp.to_s 
        if(letra.size > 1 || palavraUsuario.include?(letra))
            puts "Letra inválida"
        else
            palavraCerta.each_with_index do |l,i|
                palavraUsuario[i] = letra if palavraCerta[i] == letra && palavraUsuario[i].size <= 1
            end
        end
        tentativas += 1
    end

    puts "Parabéns!!! Você conseguiu com #{tentativas} tentativas!"

end

puts "Jogo da Forca"
puts "Escolha o tema da palavra: \n1 - Frutas"

tema = gets.chomp.to_i 

case tema
when 1
    forca_fruta (frutas[rand(10)]) # Vai pegar algum valor de frutas na posicao entre 0-9
end