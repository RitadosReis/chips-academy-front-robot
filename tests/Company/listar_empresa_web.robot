*** Settings ***
Documentation    Arquivo contendo os casos de testes relacionados a editar endereço cadastro empresa web
Resource          ../../resources/keywords/listar_empresa_kws.resource
Test Setup        Logar na página Qa Coders
Test Teardown     Fechar navegador


*** Test Cases ***
CT001 - Listar empresas
    Acessar menu Cadastros  
    Acesse o menu Empresa
    Validar se a página de listagem de empresas foi carregada