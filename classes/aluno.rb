require "./pessoa"

class Aluno < Pessoa  # aluno herdado da classe Pessoa
    def estudar
        puts "Bora estudar"
    end
end