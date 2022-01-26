
puts "Quantos anos você tem?"
    idadeano = gets.chomp.to_i

	idadeemdias = idadeano * 365  
	idadeMes = idadeano * 30 
		
	idadeTotalDia = idadeemdias

    puts "Vi aqui que vc tem " + (idadeano) + "anos de vida"
	puts "E tem " + (idadeMes).to_s + " meses de vida"
    puts "vc nasceu há " + (idadeTotalDia).to_s + " dias"
