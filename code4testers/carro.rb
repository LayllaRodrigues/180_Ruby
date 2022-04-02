#Uma classe é um objeto que tem caracteristicas e funcoes
# Para atribuir caracteristicas as classes, uso o attr_accessor 
# Para usar a classe, é necessário instancia-la, pode fazer isso com o nome_da_classe.new

class Carro
    attr_accessor :nome, :cor, :marca

    def ligar
        puts "O #{@nome} está pronto para iniciar o trajeto."
    end

end

chevette = Carro.new
chevette.nome = "Chevette"
chevette.cor = "Bege"
chevette.marca = "GM"

chevette.ligar
puts chevette.class

fusca = Carro.new

fusca.nome = "Fusca"
fusca.cor = "Azul"
fusca.marca = "VW"

fusca.ligar