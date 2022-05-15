class EquiposPage
    include Capybara::DSL 


    def create(equipo)
        #checkpoint com timeout explicito
        page.has_css?("#equipoForm")

        upload(equipo[:thumb]) if equipo[:thumb].length > 0 #.length consegue identificar a quantidade de itens em um array, o a qtd de letras em um string
       
        find("input[placeholder$=equipamento]").set equipo[:nome] #{usando $ filtramos a busca por placeholder que comece com algum elemento}
        find("#category").find('option', text: equipo[:categoria]).select_option
        find("input[placeholder^=Valor]").set equipo[:preco] #{usando ^ filtramos a busca por placeholder que termine com algum elemento}

        click_button "Cadastrar"
    end

    def upload(file_name)
        thumb = Dir.pwd + "/features/support/fixtures/images/" + file_name #{monto de forma relativa o caminho que está minha massa de teste}
       
        find("#thumbnail input[type=file]", visible: false).set thumb #{aqui, o elemento está oculto para o usuário, por isso o cucumber não o encontra sem especificarmos de que ele deve pesquisar mesmo estando invisivel}
    end
end