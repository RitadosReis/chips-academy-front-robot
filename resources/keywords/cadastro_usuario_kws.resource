*** Settings ***
Documentation    Arquivo de Keywords da suíte do cadastro de usuários
Resource         ../../resources/package.resource

*** Keywords ***
Gerar usuário
    ${cpf}              FakerLibrary.cpf
    ${cpf}              Remove String    ${cpf}    .    -
    ${primeiro_nome}    FakerLibrary.First Name
    ${ultimo_nome}      FakerLibrary.Last Name
    ${nome}    Catenate    ${primeiro_nome}    ${ultimo_nome}
    ${email}             FakerLibrary.Email

    Set Global Variable    ${CPF_USUARIO}       ${cpf}
    Set Global Variable    ${CPF_EXISTENTE}     11111111111
    Set Global Variable    ${NOME_USUARIO}      ${nome}
    Set Global Variable    ${EMAIL_USUARIO}     ${email}
    Set Global Variable    ${EMAIL_INVALIDO}    julianajeri91gmail.com
    Set Global Variable    ${SENHA_USUARIO}     @4321Test
    Set Global Variable    ${SENHA_INVALIDA}    1
    Set Global Variable    ${PERFIL_USUARIO}    ADMIN
    

Acessar menu Cadastros
    Wait Until Element Is Visible    ${MENU_CADASTROS}    ${AMBIENTE.WEB.TIMEOUT}
    Click Element                    ${MENU_CADASTROS}

Acessar menu Usuarios
    Wait Until Element Is Visible    ${MENU_USUARIOS}     ${AMBIENTE.WEB.TIMEOUT}
    Click Element                    ${MENU_USUARIOS} 

Clicar no botão Novo cadastro
    Wait Until Element Is Visible    ${NOVO_CADASTRO}     ${AMBIENTE.WEB.TIMEOUT}
    Click Element                    ${NOVO_CADASTRO}

Preencher o campo Nome Completo
    [Arguments]                      ${NOME_USUARIO}       
    Wait Until Element Is Visible    ${CAMPO_NOME_USUARIO}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_NOME_USUARIO}    ${NOME_USUARIO}  

Preencher o campo Email
    [Arguments]                      ${EMAIL_USUARIO}    
    Wait Until Element Is Visible    ${CAMPO_EMAIL_USUARIO}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_EMAIL_USUARIO}    ${EMAIL_USUARIO} 

Preencher o campo Perfil de Acesso
    [Arguments]                      ${PERFIL_USUARIO}
    Wait Until Element Is Visible    ${CAMPO_ACESSO_USUARIO}    ${AMBIENTE.WEB.TIMEOUT}    
    Input Text                       ${CAMPO_ACESSO_USUARIO}    ${PERFIL_USUARIO}  

Preencher o campo CPF
    [Arguments]                      ${CPF_USUARIO}
    Wait Until Element Is Visible    ${CAMPO_CPF_USUARIO}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_CPF_USUARIO}    ${CPF_USUARIO} 

Preencher o campo Senha
    [Arguments]                      ${SENHA_USUARIO}
    Wait Until Element Is Visible    ${CAMPO_SENHA}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_SENHA}    ${SENHA_USUARIO}   

Preencher o campo Confirmação de senha
    [Arguments]                      ${SENHA_USUARIO}
    Wait Until Element Is Visible    ${CAMPO_CONFIRMAR_SENHA}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_CONFIRMAR_SENHA}    ${SENHA_USUARIO}
    Capture Page Screenshot  

Clicar no botão Salvar novo     
    Click Element                    ${BOTAO_SALVAR}  

Validar a mensagem de e-mail invalido
    Wait Until Element Is Visible    ${TEXT_EMAIL_INVALIDO} 
    Element Text Should Be           ${TEXT_EMAIL_INVALIDO}     Email inválido

Validar a mensagem de senha invalida
    Wait Until Element Is Visible   ${ALERT_ERRO}
    Element Text Should Be          ${ALERT_ERRO}  
    ...    Senha precisa ter: uma letra maiúscula, uma letra minúscula, um número, um caractere especial(@#$%) e tamanho entre 8-12.

Validar a mensagem de CPF existente
    Wait Until Element Is Visible    ${ALERT_ERRO}
    Element Text Should Be           ${ALERT_ERRO}    O cpf informado já existe em nossa base de dados.

Validar a mensagem de senhas não conferem
    Wait Until Element Is Visible    ${ALERT_ERRO}
    Element Text Should Be           ${ALERT_ERRO}    As senhas não conferem.