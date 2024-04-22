primeiro_array = [] # ou
# primeiro_array = new Array

primeiro_array.push("Lucas")
primeiro_array.push(5)
primeiro_array.push(5.5)
primeiro_array.push(true)

for element in primeiro_array
    puts element
end

# Um array não possui um tipo definitivo, ele pode armazenar dados de todos os tipos em um só array

array_bizarro = %w("Lucas Oristanio Faes");

puts array_bizarro[0] # output = "Lucas"
puts array_bizarro[1] # output = "Oristanio"
puts array_bizarro[2] # output = "Faes"

# Esse tipo de array quebra palavra por palavra e armazena cada uma dalas em um index, de forma ordenada
# Pode ser utilizado de diversas formas para solucionar alguns problemas de forma prática

