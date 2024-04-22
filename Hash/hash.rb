pessoa = {
    "nome" => "Lucas",
    "sobrenome" => "Faes",
    "idade" => 19,
    "desempregado" => false
}

pessoa2 = pessoa.clone # Aproveita a estrutura da hash já existente

pessoa2["nome"] = "Bianca"
pessoa2["sobrenome"] = "Faes"
pessoa2["idade"] = 23
pessoa2["desempregado"] = true

puts "O usuário #{pessoa["nome"]} #{pessoa["sobrenome"]} de #{pessoa["idade"]} anos, é desempregado? #{pessoa["desempregado"] ? 'Sim' : 'Não'}."
puts "O usuário #{pessoa2["nome"]} #{pessoa2["sobrenome"]} de #{pessoa2["idade"]} anos, é desempregado? #{pessoa2["desempregado"] ? 'Sim' : 'Não'}."

# Vamos facilitar a criação de hashes através de um método

def criar_pessoa nome, sobrenome, idade, desempregado
    pessoa_def = {
        "nome" => nome,
        "sobrenome" => sobrenome,
        "idade" => idade,
        "desempregado" => desempregado
    }
    return pessoa_def
end

pessoa3 = criar_pessoa("Teste","Teste",30,false)
puts pessoa3  