*** Settings ***
Documentation    Arquivo de Keywords da suíte de empresas
Resource         ../../resources/package.resource

*** Keywords ***
Gerar empresa
    ${companyName}     FakerLibrary.Company
    ${companyCNPJ}     Generate Random String    length=14    chars=[NUMBERS]
    ${companyEmail}    FakerLibrary.Company Email
    ${matriz}          FakerLibrary.Company Suffix
    ${phone}           Generate Random String    length=11    chars=[NUMBERS]
    ${service}         FakerLibrary.Job
    ${responsible}     FakerLibrary.First Name
    ${zipCode}         Generate Random String    length=8     chars=[NUMBERS]
    ${city}            FakerLibrary.city
    ${state}           FakerLibrary.state_abbr
    ${district}        FakerLibrary.neighborhood
    ${street}          FakerLibrary.street_name
    ${number}          Generate Random String    length=3     chars=[NUMBERS]
    ${complement}      Generate Random String    length=6     chars=[NUMBERS]
    ${country}         FakerLibrary.Country
    Set Global Variable    ${COMPANYNAME}   ${companyName}
    Set Global Variable    ${COMPANYCNPJ}   ${companyCNPJ}
    Set Global Variable    ${COMPANYEMAIL}  ${companyEmail}
    Set Global Variable    ${MATRIZ}        ${matriz}
    Set Global Variable    ${RESPONSIBLE}   ${responsible}
    Set Global Variable    ${PHONE}         ${phone}
    Set Global Variable    ${SERVICE}       ${service}
    Set Global Variable    ${ZIPCODE}       ${zipCode}
    Set Global Variable    ${COUNTRY}       ${country}
    Set Global Variable    ${CITY}          ${city}
    Set Global Variable    ${STATE}         ${state}
    Set Global Variable    ${DISTRICT}      ${district}
    Set Global Variable    ${STREET}        ${street}
    Set Global Variable    ${NUMBER}        ${number}
    Set Global Variable    ${COMPLEMENT}    ${EMPTY}

Acessar menu cadastros
    Wait Until Element Is Visible    ${MENU_CADASTROS}    ${AMBIENTE.WEB.TIMEOUT}
    Click Element                    ${MENU_CADASTROS}

Acesse o menu empresa
    Wait Until Element Is Visible    ${MENU_CADASTROS}    ${AMBIENTE.WEB.TIMEOUT}
    Click Element                    ${MENU_CADASTROS}
    Wait Until Element Is Visible    ${MENU_EMPRESA} 
    Click Element                    ${MENU_EMPRESA}

Selecione a opção editar no cadastro de uma empresa
    Wait Until Element Is Visible    ${BUTTON_EDITAR_TELA_EMPRESA}    ${AMBIENTE.WEB.TIMEOUT}
    Click Element                    ${BUTTON_EDITAR_TELA_EMPRESA}

Alterar os dados no campo CEP
    [Arguments]                      ${ZIPCODE}
    Run Keyword And Ignore Error    Scroll Element Into View    ${BUTTON_SALVAR_ALTERAÇÕES}
    Wait Until Element Is Visible    ${CAMPO_CEP}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_CEP}    ${ZIPCODE}

Alterar os dados no campo Pais
    [Arguments]                      ${COUNTRY}
    Wait Until Element Is Visible    ${CAMPO_PAIS}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_PAIS}    ${COUNTRY}

Alterar os dados no campo Cidade
    [Arguments]                      ${CITY}
    Wait Until Element Is Visible    ${CAMPO_CIDADE}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_CIDADE}    ${CITY}

Alterar os dados no campo Estado         
    [Arguments]                      ${STATE}
    Wait Until Element Is Visible    ${CAMPO_ESTADO}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_ESTADO}    ${STATE}

Alterar os dados no campo Bairro         
    [Arguments]                      ${DISTRICT}
    Wait Until Element Is Visible    ${CAMPO_BAIRRO}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_BAIRRO}    ${DISTRICT}

Alterar os dados no campo Rua            
    [Arguments]                      ${STREET}
    Wait Until Element Is Visible    ${CAMPO_RUA}     ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_RUA}     ${STREET}

Alterar os dados no campo Número         
    [Arguments]                      ${NUMBER}
    Set Suite Variable               ${NUMBER}
    Wait Until Element Is Visible    ${CAMPO_NUMERO}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_NUMERO}    ${NUMBER}

Alterar os dados no campo Complemento
    [Arguments]                      ${COMPLEMENT}
    Wait Until Element Is Visible    ${CAMPO_COMPLEMENTO}    ${AMBIENTE.WEB.TIMEOUT}
    # Clear Element Text               ${CAMPO_COMPLEMENTO}
    Press Keys                       ${CAMPO_COMPLEMENTO}    CTRL+A    BACKSPACE

Altere os dados no campo CEP
    [Arguments]                      ${ZIPCODE}
    Set Suite Variable               ${ZIPCODE}
    Run Keyword And Ignore Error    Scroll Element Into View    ${BUTTON_SALVAR_ALTERAÇÕES}
    Wait Until Element Is Visible    ${CAMPO_CEP}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_CEP}    ${ZIPCODE}

Altere os dados no campo Pais
    [Arguments]                      ${COUNTRY}
    Set Suite Variable               ${COUNTRY}
    Wait Until Element Is Visible    ${CAMPO_PAIS}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_PAIS}    ${COUNTRY}

Altere os dados no campo Cidade
    [Arguments]                      ${CITY}
    Set Suite Variable               ${CITY}
    Wait Until Element Is Visible    ${CAMPO_CIDADE}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_CIDADE}    ${CITY}

Altere os dados no campo Estado         
    [Arguments]                      ${STATE}
    Set Suite Variable               ${STATE}
    Wait Until Element Is Visible    ${CAMPO_ESTADO}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_ESTADO}    ${STATE}

Altere os dados no campo Bairro         
    [Arguments]                      ${DISTRICT}
    Set Suite Variable               ${DISTRICT}
    Wait Until Element Is Visible    ${CAMPO_BAIRRO}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_BAIRRO}    ${DISTRICT}

Altere os dados no campo Rua            
    [Arguments]                      ${STREET}
    Set Suite Variable               ${STREET}
    Wait Until Element Is Visible    ${CAMPO_RUA}     ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_RUA}     ${STREET}

Altere os dados no campo Número         
    [Arguments]                      ${NUMBER}
    Set Suite Variable               ${NUMBER}
    Wait Until Element Is Visible    ${CAMPO_NUMERO}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_NUMERO}    ${NUMBER}

Altere os dados no campo Complemento
    [Arguments]                      ${COMPLEMENT}
    Set Suite Variable               ${COMPLEMENT}
    Wait Until Element Is Visible    ${CAMPO_COMPLEMENTO}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_COMPLEMENTO}    ${COMPLEMENT}
    Capture Page Screenshot      

Salvar alterações
    Wait Until Element Is Visible    ${BUTTON_SALVAR_ALTERAÇÕES}    ${AMBIENTE.WEB.TIMEOUT}
    Click Element                    ${BUTTON_SALVAR_ALTERAÇÕES}

Validar se as alterações foram salvas
    Wait Until Element Is Visible    ${BUTTON_EDITAR_TELA_EMPRESA}    ${AMBIENTE.WEB.TIMEOUT}
    Click Element                    ${BUTTON_EDITAR_TELA_EMPRESA}
    Run Keyword And Ignore Error     Scroll Element Into View    ${BUTTON_SALVAR_ALTERAÇÕES}
    ${cep}    Get Value              ${CAMPO_CEP}
    Should Be Equal As Strings       ${cep}    ${ZIPCODE}

    ${pais}    Get Value             ${CAMPO_PAIS}
    Should Be Equal As Strings       ${pais}    ${COUNTRY}

    ${cidade}    Get Value           ${CAMPO_CIDADE}
    Should Be Equal As Strings       ${cidade}    ${CITY}

    ${estado}    Get Value           ${CAMPO_ESTADO}
    Should Be Equal As Strings       ${estado}    ${STATE}

    ${bairro}    Get Value           ${CAMPO_BAIRRO}
    Should Be Equal As Strings       ${bairro}    ${DISTRICT}

    ${rua}    Get Value              ${CAMPO_RUA}
    Should Be Equal As Strings       ${rua}    ${STREET}

    ${numero}    Get Value           ${CAMPO_NUMERO}
    Should Be Equal As Strings       ${numero}    ${NUMBER}

    ${complemento}    Get Value      ${CAMPO_COMPLEMENTO}
    Should Be Equal As Strings       ${complemento}    ${COMPLEMENT} 
    Capture Page Screenshot






