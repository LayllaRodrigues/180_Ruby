
Dado('que acesso a página de cadastro') do
    visit "http://rocklov-web:3000/signup"
end

Quando('submeto o seguinte formulário de cadastro:') do |table|
    # table is a Cucumber::MultilineArgument::DataTable

    log table.hashes
    user = table.hashes.first
    log user

    MongoDB.new.remove_user("laylla.rodrigues@hotmail.com")

    find("#fullName").set user[:nome]
    find("#email").set user[:email]
    find("#password").set user[:senha]

    click_button    "Cadastrar"

end

  

