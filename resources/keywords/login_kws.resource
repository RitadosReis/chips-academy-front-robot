*** Settings ***
Documentation    Arquivo de Keywords da suíte de login
Resource         ../../resources/package.resource

*** Keywords ***
Acessar página login
    Open Browser      url=${AMBIENTE.WEB.URL}    browser=${AMBIENTE.WEB.BROWSER_HAEDLESS}
    Maximize Browser Window

Digitar o email
    [Arguments]                      ${email_sysadmin}
    Wait Until Element Is Visible    ${usernameInput}     ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${usernameInput}     ${email_sysadmin}

Digitar a senha
    [Arguments]                      ${senha_sysadmin}
    Wait Until Element Is Visible    ${senhaInput}        ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${senhaInput}        ${senha_sysadmin}

Clicar botão Entrar
    Wait Until Element Is Visible    ${entrarButton}      ${AMBIENTE.WEB.TIMEOUT}
    Click Element                    ${entrarButton}

Validar Login com sucesso
    Wait Until Element Is Visible    ${MENU_CADASTROS}    ${AMBIENTE.WEB.TIMEOUT}
    Page Should Contain Element      ${MENU_CADASTROS}
    ${current_url}    Get Location
    Should Be Equal As Strings       ${current_url}      ${AMBIENTE.WEB.URLHOME} 
    Capture Page Screenshot

Digitar email inválido
    [Arguments]                      ${email_invalido}
    Wait Until Element Is Visible    ${usernameInput}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${usernameInput}    ${email_invalido}

Digitar senha inválida
    [Arguments]                      ${senha_invalido}
    Wait Until Element Is Visible    ${senhaInput}       ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${senhaInput}       ${senha_invalido}

Validar botão Entrar
    Page Should Contain Element      ${entrarButton}
    Capture Page Screenshot

Validar Link Esqueci minha senha
    Page Should Contain Element      ${LINK_ESQUECI_MINHA_SENHA}    ${AMBIENTE.WEB.TIMEOUT}
    Capture Page Screenshot

Validar Link Primeiro Acesso
    Page Should Contain Element      ${LINK_ACESSE_AQUI}            ${AMBIENTE.WEB.TIMEOUT}
    Capture Page Screenshot

Validar mensagem erro email inválido
    [Arguments]        ${mensagem}
    Wait Until Element Is Visible    locator=${MSG_ERROR}
    ${mensagem_real}=    Get Text    locator=${MSG_ERROR}
    Should Be Equal    ${mensagem_real}    ${mensagem}
  
Validar mensagem erro senha inválida
    [Arguments]        ${mensagem}
    Wait Until Element Is Visible    locator=${MSG_ERROR}
    ${mensagem_real}=    Get Text    locator=${MSG_ERROR}
    Should Be Equal    ${mensagem_real}    ${mensagem}

Validar mensagem erro email e senha inválidos
    [Arguments]        ${mensagem}
    Wait Until Element Is Visible    locator=${MSG_ERROR}
    ${mensagem_real}=    Get Text    locator=${MSG_ERROR}
    Should Be Equal    ${mensagem_real}    ${mensagem}

Validar mensagem campo email obrigatório
    [Arguments]    ${msg_email_obrigatorio}
    Wait Until Element Is Visible    locator=${MSG_ERROR_EMAIL}
    ${mensagem_real}=    Get Text    locator=${MSG_ERROR_EMAIL}
    Should Be Equal    ${mensagem_real}    ${msg_email_obrigatorio}

Validar mensagem campo senha obrigatório
    [Arguments]    ${msg_senha_obrigatoria}
    Wait Until Element Is Visible    locator=${MSG_ERROR_SENHA}
    ${mensagem_real}=    Get Text    locator=${MSG_ERROR_SENHA}
    Should Be Equal    ${mensagem_real}    ${msg_senha_obrigatoria}

Validar mensagem campo email e senha obrigatórios
    [Arguments]    ${msg_email_obrigatorio}    ${msg_senha_obrigatorio}     
    Page Should Contain Element     ${msg_email_obrigatorio}    ${AMBIENTE.WEB.TIMEOUT}
    Page Should Contain Element     ${msg_email_obrigatorio}    ${AMBIENTE.WEB.TIMEOUT}
