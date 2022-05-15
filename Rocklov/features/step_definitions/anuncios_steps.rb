Dado('Login com {string} e {string}') do |email, password|
    @email = email

    @login_page.open
    @login_page.with(email, password)
end
  
Dado('que acesso a formulario de cadastro de anúncios') do
    @dash_page.goto_equipo_form
end

Dado('que eu tenho o seguinte equipamento:') do |table|
    @anuncio = table.rows_hash #{quando uso uma variavel com @ ela se torna uma vaiavel de instancia, bem parecida com a global}
   
    MongoDB.new.remove_equipo(@anuncio[:nome], @email)
end

  
Quando('submeto o cadastro desse item') do
    @equipos_page.create(@anuncio)
end
  
Então('devo ver esse item no meu dashboard') do
    expect(@dash_page.equipo_list).to have_content @anuncio[:nome]
    expect(@dash_page.equipo_list).to have_content "R$#{@anuncio[:preco]}/dia" #{interpolação do txt na tela com o elemento da minha tabela}
end