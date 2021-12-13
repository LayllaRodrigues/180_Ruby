def some(n1, n2)
    puts n1 + n2
end 

def substrai(n1, n2)
    puts n1 - n2
end 

def multiplica(n1, n2)
    puts n1 * n2
end 

def divide(n1, n2)
    resultado = (n1.to_f / n2.to_f).round(2)
    puts resultado
    puts resultado.class 
end 

divide(10,3)

#arredondamento de casas decimais com round(2) 
#transformando em float com to.f 
