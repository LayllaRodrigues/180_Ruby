#language: pt


Funcionalidade: Cadastro

Sendo um músico que possui equipamentos musicais
Quero fazer o meu cadastro no Rocklov 
Para que eu possa disponibilizá-los para locação

@temp
Cenário: Fazer cadastro

    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro completo
    Então sou direcionado para o dashboard

Cenário: Submeter cadastro sem o nome 

    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro sem o nome 
    Então vjo a mensagm de alerta: Oops, informe seu nome completo!

Cenário: Submeter cadastro sem o e-mail
    
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro sem o e-mail
    Então vejo a mensagem de alerta: Oops, informe um e-mail válidoo!

Cenário: Submeter cadastro com email incorreto

    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com incorreto
    Então vejo a mensagem de alerta: Oops, informe um email válido!

Cenário: Submeter cadastro sem a senha

    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro sem a senha
    Então vejo a mensagem de alerta: Oops, informe sua senha!




