
	funcao inicio()
	{
		inteiro idadeAno, idadeMes, idadeDia, idadeTotalDia
		
		escreva("Quantos anos você tem?")
		leia(idadeAno)
		
		escreva("Quantos meses você tem?")
		leia(idadeMes)
		
		escreva("Quantos dias você tem?")
		leia(idadeDia)

		idadeAno = idadeAno * 365
		idadeMes = idadeMes * 30
		
		idadeTotalDia = idadeAno + idadeMes + idadeDia
		escreva("Você nasceu há: " + idadeTotalDia + " dias")
	}
}