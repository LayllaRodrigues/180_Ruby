#language: pt
Funcionalidade: Cadastro

    Sendo um músico que possui equipamentos musicais
    Quero fazer o meu cadastro no Rocklov
    Para que eu possa disponibilizá-los para locação

    
    Cenário: Fazer cadastro

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulário de cadastro:
            |nome             |email                       |senha  |
            |Laylla Rodrigues |laylla.rodrigues@hotmail.com|pwd123 |
        Então sou direcionado para o Dashboard
    
    @cadastro
    Esquema do Cenário: Tentativa de Cadastro

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulário de cadastro:
            | nome         | email         | senha         |
            | <nome_input> | <email_input> | <senha_input> |
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            |nome_input       |email_input                     |senha_input |mensagem_output                  |
            |                 |laylla.rodrigues@hotmail.com    |pwd123      |Oops. Informe seu nome completo! |
            |Laylla Rodrigues |                                |pwd123      |Oops. Informe um email válido!   |
            |Laylla Rodrigues |laylla.rodrigues&hotmail.com    |pwd123      |Oops. Informe um email válido!   |
            |Laylla Rodrigues |laylla.rodrigues@hotmail.com    |            |Oops. Informe sua senha secreta! |
