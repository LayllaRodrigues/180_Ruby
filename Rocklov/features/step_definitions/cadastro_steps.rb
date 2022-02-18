require 'mongo'

Dado('que acesso a página de cadastro') do
    visit "http://rocklov-web:3000/signup"
end
  
Quando('submeto o meu cadastro completo') do

    
#{Esse bloco de cod integra com o mongo e deleta todos os registros com o e-mail na variavel users}

    client = Mongo::Client.new('mongodb://rocklov-db:27017/rocklov')
    users = client[:users]
    users.delete_many({email: "laylla@hotmail.com"})


    find("#fullName").set "Laylla Rodrigues"
    find("#email").set "laylla@hotmail.com"
    find("#password").set "pwd123"

    click_button    "Cadastrar"
end
  
Então('sou direcionado para o dashboard') do
    expect(page).to have_css ".dashboard"

end

Quando('submeto o meu cadastro sem o nome') do
    find("#email").set Faker::Internet.free_email
    find("#password").set "pwd123"

    click_button    "Cadastrar"

end
  
  Então('vejo a mensagm de alerta: Oops. Informe seu nome completo!') do
    alert = find(".alert-dark")
    expect(alert.text).to eql "Oops. Informe seu nome completo!"

end

Quando('submeto o meu cadastro sem o e-mail') do
    find("#fullName").set "Laylla Rodrigues"
    find("#password").set "pwd123"
    click_button    "Cadastrar"

end

Quando('submeto o meu cadastro com  email incorreto') do
    find("#fullName").set "Laylla Rodrigues"
    find("#email").set      "emailincorreto.com"
    find("#password").set "pwd123"
    
    click_button    "Cadastrar" 
end
  
Então('vejo a mensagem de alerta: Oops. Informe um email válido!') do
    alert = find(".alert-dark")
    expect(alert.text).to eql "Oops. Informe um email válido!"
end

Quando('submeto o meu cadastro sem a senha') do
    find("#fullName").set "Laylla Rodrigues"
    find("#email").set Faker::Internet.free_email

    click_button    "Cadastrar"
end
  
Então('vejo a mensagem de alerta: Oops. Informe sua senha secreta!') do
    alert = find(".alert-dark")
    expect(alert.text).to eql "Oops. Informe sua senha secreta!"
end