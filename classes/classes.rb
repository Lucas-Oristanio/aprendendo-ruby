

# Como em JS, no ruby também pode se dizer que tudo é objeto pois:
numero = 15 
puts numero.class # output->Integer
palavra = "Hello World" 
puts palavra.class # output->String

#  Para criar classe:
class Pessoa2   # nome da classe sempre começa com maiuscula

    def falar 
        puts "Oiii"
    end

end # Assim como condicoes, def e loops, uma classe também deve finalizar com a tag "end"

pessoa = Pessoa2.new 
pessoa.falar

require "./pessoa" # Importando uma classe e instânciando-a
# Para instânciar Pessoa:
pessoa1 = Pessoa.new 
pessoa1.falar

pessoa2 = Pessoa.new 
pessoa2.falar

require_relative "aluno"
aluno = Aluno.new
aluno.estudar 