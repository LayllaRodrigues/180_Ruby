#language: pt
Funcionalidade: Cadastro

Sendo um músico que possui equipamentos musicais
Quero fazer o meu cadastro no Rocklov 
Para que eu possa disponibilizá-los para locação

@cadastro
Cenário: Fazer cadastro

    Dado que acesso a página de cadastro
    Quando submeto o seguinte formulário de cadastro:
        |nome            |email             |senha |
        |Laylla Rodrigues|laylla@hotmail.com|pwd123|
    Então sou direcionado para o dashboard

@tentativa_cadastro
Cenário: Submeter cadastro sem o nome 

    Dado que acesso a página de cadastro
    Quando submeto o seguinte formulário de cadastro:
        |nome            |email             |senha |
        |                |laylla@hotmail.com|pwd123|    
    Então vejo a mensagem de alerta: "Oops. Informe seu nome completo!"

@tentativa_cadastro
Cenário: Submeter cadastro sem o e-mail
    
    Dado que acesso a página de cadastro
    Quando submeto o seguinte formulário de cadastro:
        |nome            |email             |senha |
        |Laylla Rodrigues|                  |pwd123|    
    Então vejo a mensagem de alerta: "Oops. Informe um email válido!"

@tentativa_cadastro
Cenário: Submeter cadastro com email incorreto

    Dado que acesso a página de cadastro
    Quando submeto o seguinte formulário de cadastro:
        |nome            |email             |senha |
        |Laylla Rodrigues|laylla&hotmail.com|pwd123|
    Então vejo a mensagem de alerta: "Oops. Informe um email válido!"

@tentativa_cadastro
Cenário: Submeter cadastro sem a senha

    Dado que acesso a página de cadastro
    Quando submeto o seguinte formulário de cadastro:
        |nome            |email             |senha |
        |Laylla Rodrigues|laylla@hotmail.com|      |    
    Então vejo a mensagem de alerta: "Oops. Informe sua senha secreta!"





