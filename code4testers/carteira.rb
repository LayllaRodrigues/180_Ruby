puts "Qual é o seu nome?"
nome = gets.chomp
puts "Quantos anos você tem?"
idade = gets.chomp.to_i

if (idade >= 18)
    puts nome + ", vc pode tirar carteira de motorista."
elsif (idade >= 7)
    puts nome + ", continue andando de bike"
else
    puts nome + ", vc é um neném, ande de motoquinha =)"
end
    