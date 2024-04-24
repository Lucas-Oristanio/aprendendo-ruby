class FiltrarLivros 


    def resultadoListar l
        puts "Livro: #{l.nome}\nAutor: #{l.autor}\nPreço: #{l.preco}\nReimpressão: #{l.reimpressao ? "Sim" : "Não"}\nLançamento: #{l.ano_lancamento}"
        puts 
    end

    def filtrarPorValor listaLivros,preco 
        puts "Buscando livros a partir de R$#{preco}\n"
        puts
        listaLivros.each do |l|
            # puts "Livro: #{l.nome}\nAutor: #{l.autor}\nPreço: #{l.preco}\nReimpressão: #{l.reimpressao ? "Sim" : "Não"}\nLançamento: #{l.ano_lancamento}" if l.preco <= preco 
            # puts
            Main.resultadoListar(l) if l.preco <= preco
        end
    end

    def filtarPorAnoLancamento listaLivros,ano_lancamento
        puts "Buscando livros lançados a partir do ano #{ano_lancamento}"
        puts
        listaLivros.each do |l|
            Main.resultadoListar(l) if l.ano_lancamento > ano_lancamento
        end
    end

    def filtrarPorAutor listaLivros,autor 
        puts "Buscando livros lançados pelo autor #{autor}"
        puts 
        listaLivros.each do |l|
            Main.resultadoListar(l) if l.autor.casecmp?(autor)
        end
    end

end