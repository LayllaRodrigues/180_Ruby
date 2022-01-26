puts "Qual é o seu nome?"
nome = gets.chomp
puts "Quantos anos você tem?"
idade = gets.chomp.to_i

if (idade >= 18)
    puts "#{nome}, vc tem  #{idade}  anos e portanto pode tirar sua carteira de motorista."
elsif (idade >= 7)
    puts " #{nome}, vc tem  #{idade} anos, continue andando de bike"
else
    puts " #{nome}, vc tem  #{idade}  anos, vc ainda é um neném, ande de motoquinha =)"
end


    