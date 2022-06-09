#Uma classe é um objeto que tem caracteristicas e funcoes
# Para atribuir caracteristicas as classes, uso o attr_accessor 
# Para usar a classe, é necessário instancia-la, pode fazer isso com o nome_da_classe.new


class Veiculo
    attr_accessor :nome, :cor, :marca

    def initialize(nome,marca)
        @nome = nome
        @marca = marca
    end

    def define_cor(cor)
        @cor = cor
    end

end

class Carro < Veiculo
    def ligar
        puts "O #{@nome} está pronto para iniciar o trajeto."
    end

    def dirigir
        puts "O #{@nome} está iniciando o trajeto."
    end
end

class Moto < Veiculo
    def ligar
        puts "A #{@nome} está pronto para iniciar o trajeto."
    end

    def pilotar
        puts "A #{@nome} está iniciando o trajeto."
    end
end

chevette = Carro.new("Chevette", "GM")
chevette.ligar
chevette.dirigir
chevette.define_cor("bege")


fusca = Carro.new("Fusca", "VW")
fusca.ligar
fusca.dirigir
fusca.define_cor("Azul")

cg = Moto.new("CG", "Honda")
cg.ligar
cg.pilotar


