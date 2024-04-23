class Compra 
    attr_accessor :nomeCiente, :listaProdutos
    
    def initialize(nomeCliente)
        @nomeCiente = nomeCliente  
        @listaProdutos = []
    end

    def adicionarProduto produto
        if produto
            @listaProdutos.push(produto)
        end
    end

    def removerProduto(i)
        if i >= 0 and i <= @listaProdutos.size 
            @listaProdutos.delete_at(i)
        end
    end

    def getQuantidadeProdutos 
        return @listaProdutos.size  
    end

    def qetProdutoPorNome nome  
        for p in listaProdutos do  
            if p.nome.casecmp?(nome) # compara 2 string ignorando case 
                return p  
            end
        end
        return nil
    end

    def getQuantidadeProdutosFrageis 
        produtosFrageis = 0
        for p in listaProdutos do
            if p.fragil 
                produtosFrageis += 1
            end
        end
        return produtosFrageis
    end

    def getProdutosPorCategoria categoria 
        listaCategoria = []
        for p in listaProdutos do 
            if p.categoria.casecmp?(categoria)
                listaCategoria.push(p)
            end
        end
        return listaCategoria
    end

    def calcularTotalFrete  
        totalFrete = 0
        for p in listaProdutos do 
            p.fragil ? totalFrete += p.pesoKg * 0.2 : totalFrete += p.pesoKg * 0.1
        end
        return totalFrete
    end

    def calcularTotalProdutos
        totalProdutos = 0
        for p in listaProdutos
            totalProdutos += p.preco  
        end
        return totalProdutos
    end

    def calcularTotalCompra
        return calcularTotalFrete + calcularTotalProdutos
    end
end