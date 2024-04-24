class Compra 
    attr_reader :nomeCiente
    attr_accessor :listaProdutos
    
    def initialize(nomeCliente)
        @nomeCiente = nomeCliente  
        @listaProdutos = []
    end

    def adicionarProduto produto
        # if produto
        #     @listaProdutos.push(produto)
        # end
        @listaProdutos.push(produto) if produto 
    end

    def removerProduto(i)
        # if i >= 0 and i < @listaProdutos.size 
        #     @listaProdutos.delete_at(i)
        # end
        @listaProdutos.delete_at(i) if i >= 0 && i < @listaProdutos.size
    end

    def getQuantidadeProdutos 
        return @listaProdutos.size  
    end

    def qetProdutoPorNome nome  
        # for p in listaProdutos do  
        #     if p.nome.casecmp?(nome) # compara 2 string ignorando case 
        #         return p  
        #     end
        # end

        listaProdutos.each do |p|
            return p if p.nome.casecmp(nome)
        end
        return nil
    end

    def getQuantidadeProdutosFrageis 
        produtosFrageis = 0
        # for p in listaProdutos do
        #     if p.fragil 
        #         produtosFrageis += 1
        #     end
        # end

        listaProdutos.each do |p|
            produtosFrageis+=1 if p.fragil
        end
        return produtosFrageis
    end

    def getProdutosPorCategoria categoria 
        listaCategoria = []
        # for p in listaProdutos do 
        #     if p.categoria.casecmp?(categoria)
        #         listaCategoria.push(p)
        #     end
        # end

        listaProdutos.each do |p|
            listaCategoria.push(p) if p.categoria.casecmp?(categoria)
        end
        return listaCategoria
    end

    def calcularTotalFrete  
        totalFrete = 0
        # for p in listaProdutos do 
        #     p.fragil ? totalFrete += p.pesoKg * 0.2 : totalFrete += p.pesoKg * 0.1
        # end

        listaProdutos.each do |p| 
            p.fragil ? totalFrete += p.pesoKg * 0.2 : totalFrete += p.pesoKg * 0.1
        end
        return totalFrete
    end

    def calcularTotalProdutos
        totalProdutos = 0
        # for p in listaProdutos
        #     totalProdutos += p.preco  
        # end

        listaProdutos.each do |p|
            totalProdutos += p.preco 
        end
        return totalProdutos
    end

    def calcularTotalCompra
        return calcularTotalFrete + calcularTotalProdutos
    end
end