require "./OperacaoBancaria"

class ContaCorrente 

    attr_reader :titular, :agencia, :numero 
    attr_accessor :listaOperacoes 

    def initialize titular, agencia, numero
        @titular = titular 
        @agencia = agencia 
        @numero = numero
        @listaOperacoes = []
    end

    def adicionarOperacao categoria, descricao, valor
        operacao = OperacaoBancaria.new(categoria,descricao,valor)
        listaOperacoes.push(operacao)
    end

    def buscarOperacoesPorCategoria categoria 
        listaCategoria = []
        listaOperacoes.each do |op|
            listaCategoria.push(op) if op.categoria.casecmp?(categoria) 
        end
        listaCategoria #return -> sem escrever return
    end

    def buscarOperacoesPorValor valor 
        listaValor = []
        listaOperacoes.each do |op|
            listaValor.push(op) if op.valor == valor 
        end
        listaValor #return -> sem escrever return
    end

    def buscarOperacoesSaida
        listaSaida = []
        listaOperacoes.each do |op| 
            listaSaida.push(op) if op.valor < 0.0
        end
        listaSaida
    end

    def buscarOperacoesEntrada
        listaEntrada = []
        listaOperacoes.each do |op|
            listaEntrada.push(op) if op.valor > 0.0
        end
        listaEntrada
    end

    def buscarOperacoesPorDescricao descricao 
        listaDescricao = []
        listaOperacoes.each do |op|
            listaDescricao.push(op) if op.descricao.casecmp?(descricao)
        end
        listaDescricao
    end 

    def buscarMaiorValor
        maior = listaOperacoes[0].valor 
        listaOperacoes.each do |op|
            maior = op.valor if op.valor > maior
        end
        maior
    end

    def buscarMenorValor
        menor = listaOperacoes[0].valor 
        listaOperacoes.each do |op|
            menor = op.valor if op.valor < menor 
        end
        menor
    end

    def obterSaldo 
        saldo = 0.0
        listaOperacoes.each do |op|
            saldo += op.valor 
        end
        saldo
    end

end