*** Settings ***
Documentation    Arquivo de Keywords da suíte de listagem de empresas
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
    Location Should Be               ${AMBIENTE.WEB.URLBASE}/company


Clicar em cadastro
    Click Element        locator=${MENU_CADASTROS}


Clicar em empresa
    Click Element        locator=${MENU_EMPRESA}  

Clicar botão pesquisar
    Click Element        locator=${BOTÃO_PESQUISAR}


Digitar a empresa desejada
    Input Text           locator=${BOTÃO_PESQUISAR}        text=${EMPRESA_PESQUISADA} 


Dar enter  
    Press Key            locator=${BOTÃO_PESQUISAR}    key=\\13   