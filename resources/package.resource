*** Settings ***
Documentation    Este é o gerenciador  de dependencias da automação
Resource    ../resources/pages/login_page.robot
Resource    ../resources/pages/usuarios_page.robot
Resource    ../resources/pages/empresas_page.robot
Resource    ../resources/shared/utils_keywords.robot

Library     SeleniumLibrary
Library     Collections
Library     RequestsLibrary
Library     String
Library     FakerLibrary    locale=pt_BR

Variables    ../fixtures/data.yaml
Variables    ../fixtures/environments.yaml