#Verificando se o vetor está vazio
vetorVazio = []
if vetorVazio.empty?
    puts "O vetor está vazio"
end

#Verificando tamanho do vetor e apagando seu indice 0 com metodos
transacoes = [90,-10,30,5,-4]
saldo = 0.0
#for t in transacoes do 
#    saldo += t 
#end
while transacoes.size > 0
    saldo += transacoes[0]
    transacoes.delete_at(0)
end
puts saldo

#Definindo métodos e executando com argumentos
def somar a,b 
    return a+b 
end
puts somar(1,2)


usuarios = ["Lucas","Sergio","usuario123"]
senhas = ["1234","4321","oioiiiii"]

def logar usuario,senha,usuarios,senhas
    i=0
    while i < usuarios.size()
        if usuario == usuarios[i] and senha == senhas[i]
            return true 
        end
        i+=1
    end
    return false
end

entrar = logar("Lucas","1234",usuarios,senhas) 
puts entrar ? "Login realizado" : "Dados inválidos, tente novamente"

#Bloco

usuarios.each do |u|
    puts u 
end