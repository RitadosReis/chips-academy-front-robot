*** Settings ***
Documentation    Arquivo que contem todas as variaveis da page de login
Resource          ../../resources/keywords/login_kws.resource
Test Teardown     Fechar navegador


*** Test Cases ***
CT001 - Login com sucesso
    Acessar página login
    Digitar o email            ${USERS.SYSADMIN}
    Digitar a senha            ${PASSWORDS.SYSADMIN}
    Clicar botão Entrar
    Validar Login com sucesso


CT002 - Validar botão Entrar
    Acessar página login
    Validar botão Entrar


CT003 - Validar Link Esqueci minha senha
    Acessar página login
    Validar Link Esqueci minha senha


CT004 - Validar Link Primeiro Acesso
    Acessar página login
    Validar Link Primeiro Acesso


CT005 - Validar Login Email Inválido
    Acessar página login    
    Digitar email inválido    ${USERS.INVALID}
    Digitar a senha           ${PASSWORDS.SYSADMIN}
    Clicar botão Entrar
    Validar mensagem erro email inválido    E
   

CT006 - Validar Login Senha Inválida
    Acessar página login
    Digitar o email           ${USERS.SYSADMIN}
    Digitar senha inválida    ${PASSWORDS.INVALID}   
    Clicar botão Entrar
    Validar mensagem erro senha inválida    E


CT007 - Validar Login Email e Senha Inválidos
    Acessar página login
    Digitar email inválido    ${USERS.INVALID}
    Digitar senha inválida    ${PASSWORDS.INVALID}
    Clicar botão Entrar
    Validar mensagem erro email e senha inválidos    E


CT008 - Campo email obrigatório
    Acessar página login
    Digitar senha inválida    ${PASSWORDS.INVALID}
    Clicar botão Entrar
    Validar mensagem campo email obrigatório    O email é obrigatório


CT009 - Campo senha obrigatório
    Acessar página login
    Digitar email inválido    ${USERS.INVALID}
    Clicar botão Entrar
    Validar mensagem campo senha obrigatório    A senha é obrigatória


CT010 - Campos email e senha obrigatórios
    Acessar página login
    Clicar botão Entrar
    Validar mensagem campo email obrigatório    O email é obrigatório
    Validar mensagem campo senha obrigatório    A senha é obrigatória