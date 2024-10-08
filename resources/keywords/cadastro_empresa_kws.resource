*** Settings ***
Documentation    Arquivo de Keywords da suíte do cadastro de usuários
Resource         ../../resources/package.resource

*** Keywords ***
Gerar empresa
    ${companyName}     FakerLibrary.Company
    ${companyCNPJ}     Generate Random String    length=14    chars=[NUMBERS]
    ${companyEmail}    FakerLibrary.Company Email
    ${matriz}          FakerLibrary.Company Suffix
    ${phone}           Generate Random String    length=11     chars=[NUMBERS]
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


Acessar menu Cadastros
    Wait Until Element Is Visible    ${MENU_CADASTROS}    ${AMBIENTE.WEB.TIMEOUT}
    Click Element                    ${MENU_CADASTROS}

Acesse o menu Empresa
    Wait Until Element Is Visible    ${MENU_EMPRESA}    ${AMBIENTE.WEB.TIMEOUT}
    Click Element                    ${MENU_EMPRESA}

Clicar no botão de Novo cadastro 
    Wait Until Element Is Visible    ${BUTTON_NOVO_CADASTRO}    ${AMBIENTE.WEB.TIMEOUT}
    Click Element                    ${BUTTON_NOVO_CADASTRO}

Preencher o campo razão social
    [Arguments]                      ${COMPANYNAME}
    Wait Until Element Is Visible    ${CAMPO_RAZAOSOCIAL}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_RAZAOSOCIAL}    ${COMPANYNAME}  

Preencher o campo nome fantasia
    [Arguments]                      ${MATRIZ}          
    Wait Until Element Is Visible    ${CAMPO_NOMEFANTASIA}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_NOMEFANTASIA}    ${MATRIZ}   

Preencher o campo email da empresa
    [Arguments]                      ${COMPANYEMAIL}
    Wait Until Element Is Visible    ${CAMPO_EMAIL}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_EMAIL}    ${COMPANYEMAIL}

Preencher o campo CNPJ
    [Arguments]                      ${COMPANYCNPJ} 
    Wait Until Element Is Visible    ${CAMPO_CNPJ}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_CNPJ}    ${COMPANYCNPJ}

Preencher o campo telefone
    [Arguments]                      ${PHONE}
    Wait Until Element Is Visible    ${CAMPO_TELEFONE}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_TELEFONE}    ${PHONE}

Preencher o campo descrição do serviço
    [Arguments]                      ${SERVICE}
    Wait Until Element Is Visible    ${CAMPO_DESCRICAOSERVICO}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_DESCRICAOSERVICO}    ${SERVICE}

Preencher o campo nome do responsável
    [Arguments]                      ${RESPONSIBLE}
    Wait Until Element Is Visible    ${CAMPO_NOMERESPOSAVEL}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_NOMERESPOSAVEL}    ${RESPONSIBLE}

Preencher o campo CEP
    [Arguments]                      ${ZIPCODE}
    Wait Until Element Is Visible    ${CAMPO_CEP}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_CEP}    ${ZIPCODE}

Preencher o campo país
    [Arguments]                      ${COUNTRY}
    Wait Until Element Is Visible    ${CAMPO_PAIS}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_PAIS}    ${COUNTRY}

Preencher o campo cidade
    [Arguments]                      ${CITY}
    Wait Until Element Is Visible    ${CAMPO_CIDADE}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_CIDADE}    ${CITY}

Preencher o campo estado
    [Arguments]                      ${STATE}
    Wait Until Element Is Visible    ${CAMPO_ESTADO}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_ESTADO}    ${STATE}

Preencher o campo bairro
    [Arguments]                      ${DISTRICT}
    Wait Until Element Is Visible    ${CAMPO_BAIRRO}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_BAIRRO}    ${DISTRICT}

Preencher o campo rua
    [Arguments]                      ${STREET}
    Wait Until Element Is Visible    ${CAMPO_RUA}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_RUA}    ${STREET}

Preencher o campo número
    [Arguments]                      ${NUMBER}
    Wait Until Element Is Visible    ${CAMPO_NUMERO}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_NUMERO}    ${NUMBER}

Preencher o campo complemento do endereço
    [Arguments]                      ${COMPLEMENT}
    Wait Until Element Is Visible    ${CAMPO_COMPLEMENTO}    ${AMBIENTE.WEB.TIMEOUT}
    Input Text                       ${CAMPO_COMPLEMENTO}    ${COMPLEMENT}
    Capture Page Screenshot

Clicar no botão Salvar novo
    Wait Until Element Is Visible    ${BUTTON_SALVAR_ALTERAÇÕES}    ${AMBIENTE.WEB.TIMEOUT}
    Click Element                    ${BUTTON_SALVAR_ALTERAÇÕES} 