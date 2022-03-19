Dado('que eu tenho o seguinte equipamento:') do |table|
    anuncio = table.rows_hash
    log  anuncio
end
  
Quando('submeto o cadastro desse item') do
    find("input[placeholder$=equipamento]").set anuncio[:nome]
    find("#category").find('option', text: anuncio[:categoria])

end
  
Então('devo ver esse item no meu dashboard') do
    pending 
end