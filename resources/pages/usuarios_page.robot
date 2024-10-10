*** Settings ***
Documentation    Arquivo contendo todas as variaveis da page de usuarios
Resource    ../../resources/package.resource


*** Variables ***
${MENU_CADASTROS}                  id=Cadastros
${MENU_USUARIOS}                   id=Usuários
${NOVO_CADASTRO}                   id=Novo Cadastro
${CAMPO_NOME_USUARIO}              id=fullName
${CAMPO_EMAIL_USUARIO}             id=mail
${CAMPO_ACESSO_USUARIO}            id=accessProfile
${CAMPO_CPF_USUARIO}               id=cpf
${CAMPO_SENHA}                     id=password
${CAMPO_CONFIRMAR_SENHA}           id=confirmPassword
${BOTAO_SALVAR}                    id=save
${CAMPO_PESQUISA}                  //input[@class='MuiInputBase-input MuiOutlinedInput-input MuiInputBase-inputSizeSmall css-1o6z5ng']
${MENU_USUARIOS}                   //a[@class='css-ew2jk']href='/user'
${BUTTON_NOVO_CADASTRO}            //button[@class='css-fvzsut']
${BUTTON_EDITAR_TELA_USUARIOS}     //button[@id='edit'][@name='editar']
${BUTTON_EXCLUIR_TELA_USUARIOS}    //button[@id='delete'][@name='excluir']
${BUTTON_AVANÇAR_TELA_USUARIOS}    //button[@class='css-kab9pu']
${BUTTON_VOLTAR_TELA_USUARIOS}     //button[@id='backButton']
${TELA_NOVO_CADASTRO}              //h5[@class='css-np5g2k'][text()='Novo Cadastro']
${TELA_EDITAR_CADASTRO}            //h5[@class='css-np5g2k'][text()='Editar Cadastro']
${COLUNA_NOME}                     //div[@class='css-wgzttu'][text()='Nome']
${COLUNA_EMAIL}                    //div[@class='css-wgzttu'][text()='Email']
${COLUNA_DEPARTAMENTO}             //div[@class='css-wgzttu'][contains(text(), "Departamento")]
${COLUNA_TELEFONE}                 //div[@class='css-wgzttu'][contains(text(), "Departamento")]
${NUMEROS_PAGINAÇÃO}               //div[text()='1'][text()='-'][text()='30']

#Editar usuário
${NOME_USUARIO_ALTERAR}        ACGKhL AYqMI 
${BOTÃO_EDITAR}                id=edit
${BOTÃO_ALTERAR_NOME}          //input[contains(@name,'fullName')]  
${NOVO_EMAIL}                  //input[contains(@name,'mail')]
${SALVAR_ALTERACAO}            //button[@type='submit'][contains(.,'SALVAR ALTERAÇOES')]
${USUARIO_ALTERADO}            ACGKhL Rima

# pesquisar usuário
${CLICAR_CADASTRO}             //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Cadastros')]
${CLICAR_USUARIO}              //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Usuários')]                  
${INPUT_PESQUISAR}             input[class="MuiInputBase-input MuiOutlinedInput-input MuiInputBase-inputSizeSmall css-1o6z5ng"]
${NOME_USUARIO}                ADMIN Blacklist
${QUANTIDADE_REGISTRO}         (//div[contains(.,'1-30 de 4349')])[5]

