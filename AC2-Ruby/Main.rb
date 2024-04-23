require_relative ("Produto")
require_relative ("Compra")
class Main

    p1 = Produto.new("Arroz",15.0,5.0,false,"Alimento")
    p2 = Produto.new("Batata",5.0,1.0,true,"Alimento")
    p3 = Produto.new("Frango",18.0,10.0,false,"Alimento")
    puts p1.calcularFrete()  
    
    c1 =  Compra.new("Lucas")
    c1.adicionarProduto(p1)
    c1.adicionarProduto(p2)
    c1.adicionarProduto(p3)

    puts c1.listaProdutos # output: 3 objetos
    c1.removerProduto(0)
    puts c1.listaProdutos # output: 2 objetos

    puts c1.getQuantidadeProdutos # output: 2

    puts c1.qetProdutoPorNome("batata") # output: objeto da batata

    puts "Quantidade de produtos frágeis: #{c1.getQuantidadeProdutosFrageis}" # output: 2
    
    puts c1.getProdutosPorCategoria("Alimento") # output: objetos p2 e  p3

    puts c1.calcularTotalFrete # output: 1.2

    puts c1.calcularTotalProdutos # output: 23.0

    puts c1.calcularTotalCompra #output: 24.2
end