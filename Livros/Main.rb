require_relative "FiltrarLivros"
require_relative "Livro"


class Main 

    attr_accessor :listaLivros

    def initialize 

        @listaLivros =[]
        @autores = ["Lucas Faes","Machado de Assis","Pedro Raul","Shakespeare","Lucas Faes"]
        ano = 1999
        while @listaLivros.size < 5
            livro = Livro.new("Ruby - Vol: #{@listaLivros.size+1}",@autores[@listaLivros.size],ano,(@listaLivros.size+1)*10, true)
            @listaLivros.push(livro)
            ano+=5
        end

    end
    
    filtros = FiltrarLivros.new 

    def listarLista
        @listaLivros.each do |l|
            filtros.resultadoListar(l)
        end
    end

    new.listarLista

    # def FiltrarLivrosfiltrarPorValor preco 
    #     puts "Buscando livros a partir de R$#{preco}\n"
    #     puts
    #     @listaLivros.each do |l|
    #         # puts "Livro: #{l.nome}\nAutor: #{l.autor}\nPreço: #{l.preco}\nReimpressão: #{l.reimpressao ? "Sim" : "Não"}\nLançamento: #{l.ano_lancamento}" if l.preco <= preco 
    #         # puts
    #         resultadoListar(l) if l.preco <= preco
    #     end
    # end

    # def filtarPorAnoLancamento ano_lancamento
    #     puts "Buscando livros lançados a partir do ano #{ano_lancamento}"
    #     puts
    #     @listaLivros.each do |l|
    #         resultadoListar(l) if l.ano_lancamento > ano_lancamento
    #     end
    # end

    # def filtrarPorAutor autor 
    #     puts "Buscando livros lançados pelo autor #{autor}"
    #     puts 
    #     @listaLivros.each do |l|
    #         resultadoListar(l) if l.autor.casecmp?(autor)
    #     end
    # end

    def filtrar 
        filtros2 = FiltrarLivros.new()
        filtros2.filtrarPorValor(@listaLivros,20)
        filtros2.filtrarPorAnoLancamento(@listaLivros,2010)
        filtros2.filtrarPorAutor(@listaLivros,"lucas faes")
    end

    new.filtrar 

end