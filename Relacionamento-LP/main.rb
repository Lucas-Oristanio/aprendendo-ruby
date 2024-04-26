require ("./ContaCorrente")
require ("./OperacaoBancaria")

class Main 

    cc1 = ContaCorrente.new("Lucas Faes","0123","0987654")
    cc1.adicionarOperacao("alimento","Tava com fome",20.5)
    cc1.adicionarOperacao("alimento","Tava com muita fome",50)
    cc1.adicionarOperacao("lazer","Cineminha",30)

    puts cc1.buscarOperacoesPorCategoria "AliMEnTo"
    puts cc1.buscarOperacoesPorValor 20.5 
    puts cc1.buscarOperacoesSaida
    puts cc1.buscarOperacoesEntrada
    puts cc1.buscarOperacoesPorDescricao "Tava com fome" #Melhorar a busca por descricao usando contains?
    puts cc1.buscarMaiorValor
    puts cc1.buscarMenorValor
    puts cc1.obterSaldo


end