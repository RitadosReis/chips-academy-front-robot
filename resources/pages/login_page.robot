*** Settings ***
Documentation    Arquivo que contem todas as variaveis da page de login
Resource    ../../resources/package.resource


*** Variables ***
${usernameInput}                id=email
${senhaInput}                   id=password
${entrarButton}                 id=login
${MENU_CADASTROS}               id=Cadastros
${BUTTON_LOGOUT}                //button[@class='css-1nvbq2d']
${MSG_ERROR}                    //div[@class='MuiAlert-message css-1xsto0d']
${MSG_ERROR_EMAIL}              //p[@class='css-18xtib3'][text()='O email é obrigatório']
${MSG_ERROR_SENHA}              //p[@class='css-18xtib3'][text()='A senha é obrigatória']
${LINK_ACESSE_AQUI}             //a[@class='css-c3vxn9']
${LINK_ESQUECI_MINHA_SENHA}     //a[@class='css-rpkgv3']