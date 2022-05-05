Dado('que estou logado como {string} e {string}') do |email, password|
    @email = email

    @login_page.open
    @login_page.with(email, password)

end
  
Dado('que acesso a formulario de cadastro de anúncios') do
    click_button "Criar anúncio"
    #{ isso valida se estou na page correta}
    expect(page).to have_css "#equipoForm"
end

Dado('que eu tenho o seguinte equipamento:') do |table|
    @anuncio = table.rows_hash #{quando uso uma variavel com @ ela se torna uma vaiavel de instancia, bem parecida com a global}
   
    MongoDB.new.remove_equipo(@anuncio[:nome], @email)
end

  
Quando('submeto o cadastro desse item') do

    thumb = Dir.pwd + "/features/support/fixtures/images/" + @anuncio[:thumb] #{monto de forma relativa o caminho que está minha massa de teste}
    find("#thumbnail input[type=file]", visible: false).set thumb #{aqui, o elemento está oculto para o usuário, por isso o cucumber não o encontra sem especificarmos de que ele deve pesquisar mesmo estando invisivel}
    find("input[placeholder$=equipamento]").set @anuncio[:nome] #{usando $ filtramos a busca por placeholder que comece com algum elemento}
    find("#category").find('option', text: @anuncio[:categoria]).select_option
    find("input[placeholder^=Valor]").set @anuncio[:preco] #{usando ^ filtramos a busca por placeholder que termine com algum elemento}

    click_button "Cadastrar"
end
  
Então('devo ver esse item no meu dashboard') do
    anuncios = find(".equipo-list")
    expect(anuncios).to have_content @anuncio[:nome]
    expect(anuncios).to have_content "R$#{@anuncio[:preco]}/dia" #{interpolação do txt na tela com o elemento da minha tabela}
end