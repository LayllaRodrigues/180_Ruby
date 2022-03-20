Dado('que estou logado como {string} e {string}') do |string, string2|
    visit "/"
    find("input[placeholder='Seu e-email']").set    'yago@equipo.com.br'
    find("input[type=password]").set    'pwd123'
    click_button    "Entrar"
end
  
Dado('que acesso a formulario de cadastro de anúncios') do
    click_button "Criar anúncio"
    #{ isso valida se estou na page correta}
    expect(page).to have_css "#equipoForm"
end

Dado('que eu tenho o seguinte equipamento:') do |table|
    @anuncio = table.rows_hash #{quando uso uma variavel com @ ela se torna uma vaiavel de instancia, bem parecida com a global}
    log  @anuncio
end
  
Quando('submeto o cadastro desse item') do
    find("input[placeholder$=equipamento]").set @anuncio[:nome] #{usando $ filtramos a busca por placeholder que comece com algum elemento}
    find("#category").find('option', text: @anuncio[:categoria]).select_option
    find("input[placeholder^=Valor]").set @anuncio[:preco] #{usando ^ filtramos a busca por placeholder que termine com algum elemento}

    click_button "Cadastrar"
    sleep   10
end
  
Então('devo ver esse item no meu dashboard') do
    pending 
end