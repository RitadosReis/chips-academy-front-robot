*** Settings ***
Documentation    Arquivo contendo todas as variaveis da page de empresas
Resource    ../../resources/package.resource


*** Variables ***
${CAMPO_PESQUISA}                  //input[@class='MuiInputBase-input MuiOutlinedInput-input MuiInputBase-inputSizeSmall css-1o6z5ng']
${MENU_USUARIOS}                   //a[@class='css-ew2jk']href='/user'
${BUTTON_NOVO_CADASTRO}            //button[@id='Novo Cadastro']
${BUTTON_EDITAR_TELA_EMPRESA}      //button[@id='edit']
${BUTTON_AVANÇAR_TELA_EMPRESA}     //button[@class='css-kab9pu']
${BUTTON_VOLTAR_TELA_EMPRESA}      //button[@id='backButton']
${TELA_NOVO_CADASTRO}              //h5[@class='css-np5g2k'][text()='Novo Cadastro']
${TELA_EDITAR_CADASTRO}            //h5[@class='css-np5g2k'][text()='Editar Cadastro']
${COLUNA_NOME}                     //div[@class='css-wgzttu'][text()='Nome']
${COLUNA_EMAIL}                    //div[@class='css-wgzttu'][text()='Email']
${COLUNA_DEPARTAMENTO}             //div[@class='css-wgzttu'][contains(text(), "Departamento")]
${COLUNA_TELEFONE}                 //div[@class='css-wgzttu'][contains(text(), "Departamento")]
${NUMEROS_PAGINAÇÃO}               //div[text()='1'][text()='-'][text()='30']
${MENU_CADASTROS}                  id=Cadastros
${MENU_EMPRESA}                    id=Empresa

${CAMPO_RAZAOSOCIAL}               //input[@id='companyName']
${CAMPO_NOMEFANTASIA}              //input[@id='fantasyName']
${CAMPO_EMAIL}                     //input[@id='companyMail']
${CAMPO_CNPJ}                      //input[@id='matriz']
${CAMPO_TELEFONE}                  //input[@id='telephone']
${CAMPO_DESCRICAOSERVICO}          //input[@id='serviceDescription']
${CAMPO_NOMERESPOSAVEL}            //input[@id='fullName']

${CAMPO_CEP}                       //input[@id='zipCode']
${CAMPO_PAIS}                      //input[@id='country']
${CAMPO_CIDADE}                    //input[@id='city']
${CAMPO_ESTADO}                    //input[@id='state']
${CAMPO_BAIRRO}                    //input[@id='district']
${CAMPO_RUA}                       //input[@id='street']
${CAMPO_NUMERO}                    //input[@id='number']
${CAMPO_COMPLEMENTO}               //input[@id='complement']
${BUTTON_SALVAR_ALTERAÇÕES}        id=save
${DATAGRID}                        //ul[@class='css-18psgb0']//li[@class='css-iatckd']
${REGISTROS_ESPERADOS_DATAGRID}

