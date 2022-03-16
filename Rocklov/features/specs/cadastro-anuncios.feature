#language: pt

Funcionalidade: Cadastro de Anúncios
    Sendo usuário cadastrado no Rocklov que possui equipamentos musicais
    Quero cadastrar meus equipamentos
    Para que eu possa disponibiliza-los para loacação

    Cenario: Novo equipo

        Dado que eu tenho o seguinte equipamento:
            | nome      | Fender Strato |
            | categoria | Cordas        |
            | preco     | 200           |
        Quando submeto o cadastrado desse item 
        Então devo ver esse item no meu dashboard

    


