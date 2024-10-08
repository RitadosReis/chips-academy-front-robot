*** Settings ***
Documentation    Arquivo contendo os casos de testes relacionados a listar usuário web
Resource          ../../resources/keywords/usuarios_kws.resource
Test Setup        Logar e acessar página usuários
Test Teardown     Fechar navegador


*** Test Cases ***
CT001 - Verificar campo Pesquisar
    Validar existencia campo pesquisar
    Pesquisar usuário    aaa
    Validar resultado pesquisa    aaa

CT002 - Verificar botão Novo
    Clicar botão novo cadastro
    Validar tela novo cadastro

CT003 - Verificar datagrid de usuários
    Validar numero registros datagrid    50
    Validar ordenação alfabética itens listados
    Validar colunas datagrid

CT004 - Opção Editar no datagrid de usuários
    Clicar botão editar
    Validar tela editar cadastro

CT005 - Opção Excluir no datagrid de usuários
    Validar existencia botão excluir

CT006 - Paginação quando acima de um número determinado de usuários
    Botão de paginação quando acima de    50
    Validar botão avançar e voltar no rodapé datagrid