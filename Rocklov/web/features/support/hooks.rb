# Executando ganchos antes de cada cenário para pemitir que as variaveis de intancia funcionem em todos os cenarios

#Vantagens: redução de repetição e aumento da produtividade

Before do
  @alert = Alert.new
  @login_page = LoginPage.new
  @signup_pages = SignupPage.new
  @dash_page = DashPage.new
  @equipos_page = EquiposPage.new

  # page.driver.browser.manage.window.maximize #Isso permite que ao levantar o navegador, a aba seja maximizada
  page.current_window.resize_to(1440,990) #ajuste exato de resolução da tela

end