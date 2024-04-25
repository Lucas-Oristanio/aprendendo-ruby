def entrou 
    puts "Você logou!"
end

def logar(user, senha)
    found_user = false
    File.foreach("dados.txt") do |line|
        if found_user  # Se já encontramos o usuário, essa linha é a senha
            if senha == line.strip
                return true
            end
        end
        
        if user == line.strip && found_user == false
            found_user = true
        end
    end
    return false
end

def CadastrarUsuario(user, senha)
    cadastra = verificarUsuario(user)
    if cadastra 
        File.open("dados.txt", "a") do |file|
            file.puts user
            file.puts senha 
            file.puts
        end
        puts user 
        puts senha
    end 
end

def verificarUsuario(user)
    File.foreach("dados.txt") do |line|
        if user == line.strip 
            puts "Usuário já existente"
            return false
        end
    end
    return true
end

def menu(opcao)
    case opcao 
    when 1
        puts "Digite o usuário:"
        user = gets.chomp.to_s 
        puts "Digite a senha:"
        senha = gets.chomp.to_s 
        CadastrarUsuario(user, senha)
    when 2
        puts "Digite o usuário:"
        user = gets.chomp.to_s 
        puts "Digite a senha:"
        senha = gets.chomp.to_s 
        autenticou = logar(user, senha)
        puts autenticou 
        if autenticou 
            entrou
        end 
    else
        puts "Saindo do programa"
    end
end

opcao = 1
while opcao != 0
    puts "Menu\n1 - Cadastrar Usuário\n2 - Entrar\n0 - Sair"
    opcao = gets.chomp.to_i 
    menu(opcao)
end