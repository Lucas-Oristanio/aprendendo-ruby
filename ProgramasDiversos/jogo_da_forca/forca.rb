frutas = ["maça", "banana", "laranja", "uva", "morango", "abacaxi", "melancia", "pera", "kiwi", "manga"]
animais = ["cachorro", "gato", "passaro", "macaco", "cobra", "elefante", "tigre", "leao", "girafa", "rinoceronte", "pinguim", "panda", "urso", "camelo", "peixe", "tartaruga", "papagaio", "pato", "lobo", "coelho"]
filmes = ["titanic", "avatar", "star-wars", "harry-potter", "jurassic-park", "matrix", "o-senhor-dos-aneis", "toy-story", "vingadores", "o-rei-leao", "forrest-gump", "interestelar", "pulp-fiction", "frozen", "jurassic-world", "os-incriveis"]

letras = []

def forca palavra
    palavraCerta = palavra.chars
    tamanho = palavra.size
    palavraUsuario = Array.new(tamanho," ")
    tentativas = 0
    puts "A palavra tem: #{palavra.size} letras"

    while palavraCerta != palavraUsuario
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
    puts "#{palavra}"
    puts "Parabéns!!! Você conseguiu com #{tentativas} tentativas!"

end

puts "Jogo da Forca"
puts "Escolha o tema da palavra: \n1 - Frutas\n2 - Animais\n3 - Filmes famososs"

tema = gets.chomp.to_i 

case tema
when 1
    forca (frutas[rand(frutas.size)]) # Vai pegar algum valor de frutas na posicao entre 0-9
when 2
    forca (animais[rand(animais.size)])
when 3
    forca (filmes[rand(filmes.size)])
end