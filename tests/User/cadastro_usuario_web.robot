*** Settings ***
Documentation    Arquivo contendo os casos de testes relacionados a cadastro novo usuário web
Resource          ../../resources/keywords/cadastro_usuario_kws.resource
Test Setup        Logar na página Qa Coders
Test Teardown     Fechar navegador


*** Test Cases ***
CT01 - Cadastrar um novo usuário com sucesso
    Gerar usuário
    Acessar menu Cadastros  
    Acessar menu Usuarios
    Clicar no botão Novo cadastro
    Preencher o campo Nome Completo           ${NOME_USUARIO}
    Preencher o campo Email                   ${EMAIL_USUARIO}
    Preencher o campo Perfil de Acesso        ${PERFIL_USUARIO}
    Preencher o campo CPF                     ${CPF_USUARIO}
    Preencher o campo Senha                   ${SENHA_USUARIO}    
    Preencher o campo Confirmação de senha    ${SENHA_USUARIO}
    Clicar no botão Salvar novo

CT02 - Cadastrar um novo usuário com Email invalido
    Gerar usuário
    Acessar menu Cadastros  
    Acessar menu Usuarios
    Clicar no botão Novo cadastro
    Preencher o campo Nome Completo           ${NOME_USUARIO}
    Preencher o campo Email                   ${EMAIL_INVALIDO}
    Preencher o campo Perfil de Acesso        ${PERFIL_USUARIO}
    Preencher o campo CPF                     ${CPF_USUARIO}
    Preencher o campo Senha                   ${SENHA_USUARIO}    
    Preencher o campo Confirmação de senha    ${SENHA_USUARIO}
    Clicar no botão Salvar novo
    Validar a mensagem de e-mail invalido

T03 - Cadastrar um novo usuário com Senha invalida
    Gerar usuário
    Acessar menu Cadastros  
    Acessar menu Usuarios
    Clicar no botão Novo cadastro
    Preencher o campo Nome Completo           ${NOME_USUARIO}
    Preencher o campo Email                   ${EMAIL_USUARIO}
    Preencher o campo Perfil de Acesso        ${PERFIL_USUARIO}
    Preencher o campo CPF                     ${CPF_USUARIO}
    Preencher o campo Senha                   ${SENHA_INVALIDA}    
    Preencher o campo Confirmação de senha    ${SENHA_INVALIDA}
    Clicar no botão Salvar novo
    Validar a mensagem de senha invalida