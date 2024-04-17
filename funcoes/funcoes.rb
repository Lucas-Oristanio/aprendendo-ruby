# Definir nota final do aluno
# Nota 1 tem 20% da média final, nota 2 35% e nota 3 45% respectivamente

def notaFinal(nota1,nota2,nota3)
    if nota1 < 0 or nota1 > 10 or nota2 < 0 or nota2 > 10 or nota3 < 0 or nota3 > 10
        return "Notas inseridas são inválidas"
    else
        media = nota1 * 0.2 + nota2 * 0.35 + nota3  * 0.45
        verificaAprovacao(media)
    end
end

def verificaAprovacao(media)
    if media < 5 
        return "Reprovado"
    elsif media <= 6
        return "Recuperação"
    else 
        return "Aprovado"
    end
end

puts notaFinal(10,3,7)

listaComprasFruta = []

def adicionarNaLista(listaComprasFruta,fruta)
    listaComprasFruta.push(fruta)
end

def procurarNaLista(listaComprasFruta,fruta)
    for f in listaComprasFruta
        if fruta == f
            return true
        end
    end
    return false
end
    
adicionarNaLista(listaComprasFruta,"Maça")
adicionarNaLista(listaComprasFruta,"Banana")

puts procurarNaLista(listaComprasFruta,"Uva") ? "Existe na lista" : "Não existe na  lista"