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

    livro2 = Livro.new("Teste","Teste",2009,100,true)
    puts livro2.nome 
    puts livro2.calcularPreco(livro2.preco)

    new.listarLista


    filtros.filtrarPorValor(@listaLivros,20)
    filtros.filtrarPorAnoLancamento(@listaLivros,2010)
    filtros.filtrarPorAutor(@listaLivros,"lucas faes")
    # FiltrarLivros.filtrarPorValor(@listaLivros,20)
    # FiltrarLivros.filtarPorAnoLancamento(@listaLivros,2010)
    # FiltrarLivros.filtrarPorAutor(@listaLivros,"lucas faes")

end