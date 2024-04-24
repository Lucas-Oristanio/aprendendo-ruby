class Livro 
    attr_writer # set
    attr_reader :nome, :autor, :preco, :reimpressao, :ano_lancamento # get
    attr_accessor # getter e setter

    def initialize nome, autor, ano_lancamento, preco, reimpressao
        @nome = nome 
        @autor = autor 
        @ano_lancamento = ano_lancamento
        @preco = calcularPreco(preco)
        @reimpressao = reimpressao
    end

    def calcularPreco  preco
        if @ano_lancamento < 2006 
            if @reimpressao 
                @preco = preco * 0.9
            else
                @preco = preco * 0.95
            end
        elsif @ano_lancamento < 2010
            @preco = preco * 0.96
        else 
            @preco = preco
        end
    end


end