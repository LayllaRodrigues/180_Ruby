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
    resultado = (n1.to_f / n2.to_f).ground(2)
    puts resultado
    puts resultado.class 
end 

divide(10,3)

#arredondamento de casas decimais com round(2) 
#transformando em float com to.f 

def maior_que(v1, v2)
    puts v1, v2
end

maior_que(10,10)


#Retorna true, porque 10 é maior que 5 
#maior_que(10,5 

#Retorna false, porque 5 não é maior que 10
#maior_que(5,10)

#Retorna false, porque 10 não é maior que 10, ele é igual


def menor_que(v1, v2)
    puts v1, v2
end

menor_que(5,10)

def maior_ou_igual_que(v1,v2)
    puts v1 >= v2
end

maior_ou_igual_que(10,10)


def menor_ou_igual_que(v1,v2)
    puts v1 <= v2
end

menor_ou_igual_que(5,10)


def igual(v1,v2)
    puts v1 == v2
end

def diferente(v1,v2)
    puts v1 != v2
end

diferente(10,"10")

