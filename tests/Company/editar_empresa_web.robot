*** Settings ***
Documentation    Arquivo contendo os casos de testes relacionados a editar endereço cadastro empresa web
Resource          ../../resources/keywords/editar_empresa_kws.resource
Test Setup        Logar na página Qa Coders
Test Teardown     Fechar navegador


*** Test Cases ***
CT001 - Editar endereço de cadastro de uma empresa com sucesso
    Gerar empresa
    Acesse o menu empresa
    Selecione a opção editar no cadastro de uma empresa
    Alterar os dados no campo CEP            ${ZIPCODE}
    Alterar os dados no campo Pais           ${COUNTRY}
    Alterar os dados no campo Cidade         ${CITY}
    Alterar os dados no campo Estado         ${STATE}
    Alterar os dados no campo Bairro         ${DISTRICT}
    Alterar os dados no campo Rua            ${STREET}
    Alterar os dados no campo Número         ${NUMBER}
    Alterar os dados no campo Complemento    ${COMPLEMENT}
    Salvar alterações
    # Validar se as alterações foram salvas (Plataforma com BUG)


CT002 - Editar endereço de cadastro de uma empresa - Cenários alternativos
    Acesse o menu empresa
    Selecione a opção editar no cadastro de uma empresa
    Altere os dados no campo CEP            SPSPSPSP
    Altere os dados no campo Pais           Braa342342ll
    Altere os dados no campo Cidade         São Paulo123@#$%&*
    Altere os dados no campo Estado         SPPPP
    Altere os dados no campo Bairro         !$%&* @#$%&* @#$%&*!
    Altere os dados no campo Rua            123fd#$8901 123fds45@#$90 dsfs12*&
    Altere os dados no campo Número         12!#$%&*9
    Altere os dados no campo Complemento    !#$%&* @#$%&* @#$%&*
    Salvar alterações
    # Validar se as alterações foram salvas (Plataforma com BUG)
