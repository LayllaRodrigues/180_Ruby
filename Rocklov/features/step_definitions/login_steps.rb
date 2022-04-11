Dado('que acesso a página principal') do
    visit "/"
end
  
Quando('submeto minhas credenciais {string} e {string}') do |email, password|
    login_page = LoginPage.new 
    login_page.abre_pagina
    login_page.campo_email.set email
    login_page.campo_senha.set password
    login_page.botao_entrar





    
end