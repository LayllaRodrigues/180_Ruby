Laylla = {nome: "Laylla", email: "laylla@email.com", legal: true}

#{no hash, tenho acessos as infos através de chaves. Exemplo:}

# puts Laylla[:nome]
# puts Laylla[:email]
# puts Laylla[:legal]

Joao = {nome: "joao", email: "john@gmail.com", legal: true}

# puts Joao[:nome]
# puts Joao[:email]
# puts Joao[:legal]

pessoas = [Laylla, Joao]
puts pessoas [0][:nome]
puts pessoas [1][:email]

