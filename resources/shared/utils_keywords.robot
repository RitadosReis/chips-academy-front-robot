*** Settings ***
Documentation    Arquivo contendo keywords uteis para o projeto como um todo.
Resource    ../../resources/package.resource


*** Keywords ***
Logar na página Qa Coders
    Open Browser      url=${AMBIENTE.WEB.URL}    browser=${AMBIENTE.WEB.BROWSER_HAEDLESS}
    Maximize Browser Window

    Wait Until Element Is Visible    ${usernameInput}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${usernameInput}    ${USERS.SYSADMIN}

    Wait Until Element Is Visible    ${senhaInput}       ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${senhaInput}       ${PASSWORDS.SYSADMIN}

    Wait Until Element Is Visible    ${entrarButton}     ${AMBIENTE.WEB.TIMEOUT}
    Click Element                    ${entrarButton}
    Sleep    2

    Wait Until Element Is Visible    ${MENU_CADASTROS}   ${AMBIENTE.WEB.TIMEOUT}
    ${current_url}    Get Location
    Should Be Equal As Strings       ${current_url}      ${AMBIENTE.WEB.URLHOME} 

Fechar navegador
    Close Browser

Logar e acessar página usuários
    Open Browser      url=${AMBIENTE.WEB.URL}    browser=${AMBIENTE.WEB.BROWSER_HAEDLESS}
    Maximize Browser Window

    Wait Until Element Is Visible    ${usernameInput}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${usernameInput}    ${USERS.SYSADMIN}

    Wait Until Element Is Visible    ${senhaInput}       ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${senhaInput}       ${PASSWORDS.SYSADMIN}

    Wait Until Element Is Visible    ${entrarButton}     ${AMBIENTE.WEB.TIMEOUT}
    Click Element                    ${entrarButton}
    Sleep    2

    Wait Until Element Is Visible    ${MENU_CADASTROS}    ${AMBIENTE.WEB.TIMEOUT}
    Click Element                    ${MENU_CADASTROS}
    Sleep    2

    Wait Until Element Is Visible    ${MENU_USUARIOS}     ${AMBIENTE.WEB.TIMEOUT}
    Click Element                    ${MENU_USUARIOS}
    Sleep    2

Logar e acessar página empresa
    Open Browser      url=${AMBIENTE.WEB.URL}    browser=${AMBIENTE.WEB.BROWSER_HAEDLESS}
    Maximize Browser Window
    
    Wait Until Element Is Visible    ${usernameInput}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${usernameInput}    ${USERS.SYSADMIN}

    Wait Until Element Is Visible    ${senhaInput}       ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${senhaInput}       ${PASSWORDS.SYSADMIN}

    Wait Until Element Is Visible    ${entrarButton}     ${AMBIENTE.WEB.TIMEOUT}
    Click Element                    ${entrarButton}
    Sleep    2

    Wait Until Element Is Visible    ${MENU_CADASTROS}    ${AMBIENTE.WEB.TIMEOUT}
    Click Element                    ${MENU_CADASTROS}
    Sleep    2

    Wait Until Element Is Visible    ${MENU_EMPRESA}      ${AMBIENTE.WEB.TIMEOUT}
    Click Element                    ${MENU_EMPRESA}
    Sleep    2