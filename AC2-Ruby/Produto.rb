class Produto
    attr_reader :nome, :preco, :pesoKg, :fragil, :categoria

    def initialize nome,preco,pesoKg,fragil,categoria 
        @nome = nome 
        @pesoKg = pesoKg
        @preco = preco 
        @fragil = fragil 
        @categoria = categoria  
    end

    def calcularFrete 
        @fragil ? 0.2 * @pesoKg : 0.1 * @pesoKg
    end

end