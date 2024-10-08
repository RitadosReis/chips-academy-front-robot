*** Settings ***
Documentation    Arquivo de Keywords da suíte de usuários
Resource         ../../resources/package.resource

*** Keywords ***
Acessar página login
    Open Browser                     url=${AMBIENTE.WEB.URL}    browser=${AMBIENTE.WEB.BROWSER}

Digitar o email
    Wait Until Element Is Visible    ${usernameInput}     ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${usernameInput}     ${USERS.SYSADMIN}

Digitar a senha
    Wait Until Element Is Visible    ${senhaInput}        ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${senhaInput}        ${PASSWORDS.SYSADMIN}

Clicar botão Login
    Wait Until Element Is Visible    ${entrarButton}      ${AMBIENTE.WEB.TIMEOUT}
    Click Element                    ${entrarButton}

Validar Login com sucesso
    Wait Until Element Is Visible    ${MENU_CADASTROS}    ${AMBIENTE.WEB.TIMEOUT}
    Page Should Contain Element      ${MENU_CADASTROS}
    
Acessar menu cadastros
    Wait Until Element Is Visible    ${MENU_CADASTROS}    ${AMBIENTE.WEB.TIMEOUT}
    Click Element                    ${MENU_CADASTROS}

Acessar menu usuarios
    Wait Until Element Is Visible    ${MENU_USUARIOS}     ${AMBIENTE.WEB.TIMEOUT}
    Click Element                    ${MENU_USUARIOS}

Validar existencia campo pesquisar
    Wait Until Element Is Visible    ${CAMPO_PESQUISA}    ${AMBIENTE.WEB.TIMEOUT}
    Page Should Contain Element      ${CAMPO_PESQUISA}
    
Pesquisar usuário
    [Arguments]                          ${usuario_pesquisado}
    Input Text                           ${CAMPO_PESQUISA}        ${usuario_pesquisado}

Validar resultado pesquisa
    [Arguments]                          ${usuario_pesquisado}
    Wait Until Element Is Not Visible    ${usuario_pesquisado}    ${AMBIENTE.WEB.TIMEOUT}
    
Clicar botão novo cadastro
    Page Should Contain Element          ${BUTTON_NOVO_CADASTRO}
    Click Element                        ${BUTTON_NOVO_CADASTRO}
    
Validar tela novo cadastro
    Wait Until Element Is Visible        ${TELA_NOVO_CADASTRO}    ${AMBIENTE.WEB.TIMEOUT}
    Capture Page Screenshot

Validar numero registros datagrid
    [Arguments]                             ${REGISTROS_ESPERADOS_DATAGRID}
    ${items}    Get WebElements             ${DATAGRID}
    ${numero_de_registros}    Get Length    ${items}
    Log  O número de registros é: ${numero_de_registros}
    Should Not Be Equal As Numbers          ${numero_de_registros}
    ...    ${REGISTROS_ESPERADOS_DATAGRID}

Validar ordenação alfabética itens listados
    ${items}    Get WebElements    ${DATAGRID}
    ${item_texts}     Create List
    FOR    ${item}    IN           @{items}
        ${text}    Get Text        ${item}
        Append To List     ${item_texts}    ${text}
    END
    ${sorted_items}    Copy List            ${item_texts}
    Sort List              ${sorted_items}
    Should Not Be Equal    ${item_texts}    ${sorted_items}

Validar colunas datagrid
    Page Should Contain Element          ${COLUNA_NOME}
    Page Should Contain Element          ${COLUNA_EMAIL}
    Page Should Not Contain Element      ${COLUNA_DEPARTAMENTO}
    Page Should Not Contain Element      ${COLUNA_TELEFONE}
    Capture Page Screenshot

Clicar botão editar
    Page Should Contain Element          ${BUTTON_EDITAR_TELA_USUARIOS}
    Click Element                        ${BUTTON_EDITAR_TELA_USUARIOS}

Validar tela editar cadastro
    Page Should Contain Element          ${BUTTON_EDITAR_TELA_USUARIOS}
    Capture Page Screenshot

Validar existencia botão excluir
    Page Should Not Contain Element      ${BUTTON_EXCLUIR_TELA_USUARIOS}
    Capture Page Screenshot 

Botão de paginação quando acima de
    [Arguments]                          ${NUMERO_ESPERADO}
    Page Should Contain Element          ${NUMEROS_PAGINAÇÃO}
    Page Should Not Contain Element      ${NUMERO_ESPERADO}
    Capture Page Screenshot

Validar botão avançar e voltar no rodapé datagrid
    Page Should Contain Element          ${BUTTON_AVANÇAR_TELA_USUARIOS}
    Capture Page Screenshot
    Click Element                        ${BUTTON_AVANÇAR_TELA_USUARIOS}
    Sleep    3
    Page Should Contain Element          ${BUTTON_VOLTAR_TELA_USUARIOS}
    Capture Page Screenshot
    Click Element                        ${BUTTON_VOLTAR_TELA_USUARIOS}
    Sleep    3