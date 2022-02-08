Dado('que acesso a página de cadastro') do
    visit "http://rocklov-web:3000/signup"
end
  
Quando('submeto o meu cadastro completo') do
    find("#fullName").set "Laylla Rodrigues"
    find("#email").set "lay@hotmail.com"
    find("#password").set "pwd123"

    click_button    "Cadastrar"
end
  
Então('sou direcionado para o dashboard') do
    expect(page).to have_css ".dashboard"
    sleep 10
end