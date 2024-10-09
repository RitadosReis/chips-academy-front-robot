*** Settings ***
Documentation    Arquivo de Keywords da suíte do cadastro de usuários
Resource         ../../resources/package.resource

*** Keywords ***
Acessar menu Cadastros
    Wait Until Element Is Visible    ${MENU_CADASTROS}    ${AMBIENTE.WEB.TIMEOUT}
    Click Element                    ${MENU_CADASTROS}

Acesse o menu Empresa
    Wait Until Element Is Visible    ${MENU_EMPRESA}    ${AMBIENTE.WEB.TIMEOUT}
    Click Element                    ${MENU_EMPRESA}

Validar se a página de listagem de empresas foi carregada
    Wait Until Element Is Visible    ${TEXTO_EMPRESA}
    Location Should Be    ${AMBIENTE.WEB.URLBASE}/company