class Produto
    attr_accessor :nome, :preco, :pesoKg, :fragil, :categoria

    def initialize nome,preco,pesoKg,fragil,categoria 
        @nome = nome 
        @pesoKg = pesoKg
        @preco = preco 
        @fragil = fragil 
        @categoria = categoria  
    end

    def calcularFrete 
        if @fragil 
            frete = 0.2 * @pesoKg
        elsif
            frete = 0.1 * @pesoKg
        end
        return frete
    end



end