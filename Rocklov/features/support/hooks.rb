# Executando ganchos antes de cada cenário para pemitir que as variaveis de intancia funcionem em todos os cenarios

#Vantagens: redução de repetição e aumento da produtividade 

    Before do
        @alert = Alert.new
        @login_page = LoginPage.new
        @signup_pages = SignupPage.new
        @DashPage = DashPage.new
    end