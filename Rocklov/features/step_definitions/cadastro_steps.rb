
Dado('que acesso a página de cadastro') do
    @signup_pages.open
end

Quando('submeto o seguinte formulário de cadastro:') do |table|
    # table is a Cucumber::MultilineArgument::DataTable

    log table.hashes
    user = table.hashes.first
    log user

    MongoDB.new.remove_user("laylla.rodrigues@hotmail.com")

    @signup_pages.signup(user)

end

  

