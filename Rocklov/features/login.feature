   #language: pt
   
Funcionalidade: Login
   
    Sendo um usuário cadastrado
    Quero acessar o sistema da Rocklov
    Para que eu possa anunciar meus equipamentos musicais
    
@temp
Cenario: Login do usuário

    Dado que acesso a página principal
    Quando submeto minhas credenciais "laylla1@hotmail.com" e "pwd123" 
    Então sou direcionado para o Dashboard
    
Esquema do Cenario: Tentar logar
    Dado que acesso a página principal
    Quando submeto minhas credenciais "<email_input>" e "<senha_input>"
    Então vejo a mensagem de alerta: "<mensagem_output>"

    Exemplos:
    |email_input        |senha_input|mensagem_output                 |
    |laylla1@hotmail.com|abc123     |Usuário e/ou senha inválidos.   |
    |laylla1@invalid.com|abc123     |Usuário e/ou senha inválidos.   |
    |laylla1@hotmai.com |abc123     |Usuário e/ou senha inválidos.   |
    |                   |abc123     |Oops. Informe um email válido!  |
    |laylla1@hotmail.com|           |Oops. Informe sua senha secreta!|