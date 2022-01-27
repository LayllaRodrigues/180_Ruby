
# i= 1

# 5.times do 
#     puts "execução numero #{i}"
#     i = i +1 
# end

animais = ["Macaco", "Leão", "Arrara", "Camelo", "Arrara azul"]
# i = 0 
# animais.size.times do
#     puts animais[i]
#     i = i + 1
# end

animais.each do |animal| #{uso o each para percorrer pelo array sem precisar numerar os itens}
    puts animal
end

