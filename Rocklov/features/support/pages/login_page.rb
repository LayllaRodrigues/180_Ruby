class LoginPage
    include Capybara::DSL

    def open
        visit "/"
    end

    def with(email, password)
        find("input[placeholder='Seu email']").set email
        find("input[type=password]").set password
        click_button    "Entrar"
    end

    def alert_dark
        return find(".alert-dark").text
    end


    #Implementando page objects junto ao conceito de app actions  que implementa as acoes da aplicação, funcionalidades e responsabilidades dentro de cada metodo usando o poder do encapsulamento. 
    #Como se fosse um page object turbinado, pois  o page object só trata o mapeamento dos elementos e aqui, ao envez de apenas mapear, damos responsabilidades para a classe. É mais prático e produtivo 
end