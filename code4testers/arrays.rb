animais = ["Macaco", "Leão", "Arrara", "Camelo", "Arrara azul"]
# puts animais[0]
# puts animais[1]
# puts animais[2]
# puts animais[3]
animais.push("Zebra") #{adiciona item no array}
# puts animais[4] 
animais.delete("Macaco") #{deleta item do array}
# puts animais

# aves = animais.find { |item| item == 'Arrara' } 
#{outra forma de fazer uma busca sem taxar que seja igual usando ==, podemos seguir com include} 

aves = animais.find { |item| item.include? ('Arrara') } 

puts aves


