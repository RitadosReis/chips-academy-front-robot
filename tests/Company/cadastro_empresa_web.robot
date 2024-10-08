*** Settings ***
Documentation    Arquivo contendo os casos de testes relacionados a editar endereço cadastro empresa web
Resource          ../../resources/keywords/cadastro_empresa_kws.resource
Test Setup        Logar na página Qa Coders
Test Teardown     Fechar navegador


*** Test Cases ***
CT01 - Cadastrar uma nova empresa com sucesso
    Gerar empresa
    Acessar menu Cadastros  
    Acesse o menu Empresa
    Clicar no botão de Novo cadastro 
    Preencher o campo razão social               ${COMPANYNAME}
    Preencher o campo nome fantasia              ${MATRIZ} 
    Preencher o campo email da empresa           ${COMPANYEMAIL}
    Preencher o campo CNPJ                       ${COMPANYCNPJ}
    Preencher o campo telefone                   ${PHONE}
    Preencher o campo descrição do serviço       ${SERVICE}
    Preencher o campo nome do responsável        ${RESPONSIBLE}
    Preencher o campo CEP                        ${ZIPCODE}
    Preencher o campo país                       ${COUNTRY}
    Preencher o campo cidade                     ${CITY}
    Preencher o campo estado                     ${STATE}
    Preencher o campo bairro                     ${DISTRICT}
    Preencher o campo rua                        ${STREET}
    Preencher o campo número                     ${NUMBER}
    Preencher o campo complemento do endereço    ${COMPLEMENT}
    Clicar no botão Salvar novo