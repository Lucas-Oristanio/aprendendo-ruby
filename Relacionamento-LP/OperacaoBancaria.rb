class OperacaoBancaria 

    attr_reader :categoria, :descricao, :valor 

    def initialize categoria,descricao,valor 
        @categoria = categoria 
        @descricao = descricao
        @valor = valor 
    end

end