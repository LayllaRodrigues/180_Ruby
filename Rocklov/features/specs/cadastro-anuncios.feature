#language: pt

Funcionalidade: Cadastro de Anúncios
    Sendo usuário cadastrado no Rocklov que possui equipamentos musicais
    Quero cadastrar meus equipamentos
    Para que eu possa disponibiliza-los para loacação

    @equipo
    Cenario: Novo equipo

        Dado que estou logado como "yago@equipo.com.br" e "pwd123"
        E que acesso a formulario de cadastro de anúncios
        E que eu tenho o seguinte equipamento:
            | thumb     | fender-sb.jpg |
            | nome      | Fender Strato |
            | categoria | Cordas        |
            | preco     | 200           |
        Quando submeto o cadastro desse item 
        Então devo ver esse item no meu dashboard

    


