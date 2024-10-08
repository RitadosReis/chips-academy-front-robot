<p align="center">
  <img src="https://static.wixstatic.com/media/676771_ff90eb66aa924b0b88cdd4df171f3d85~mv2.png/v1/fill/w_774,h_342,al_c,lg_1,q_85/676771_ff90eb66aa924b0b88cdd4df171f3d85~mv2.png">
</p>


![STATUS](https://img.shields.io/static/v1?label=STATUS&message=%20FINALIZADO&color=GREEN&style=for-the-badge)


## 💬 Robot Framework - Qa. Coders ##
Este repositório contém um conjunto de testes automatizados utilizando o Robot Framework. O objetivo é demonstrar como configurar e executar testes automatizados para uma API ou uma aplicação WEB.


## 👨‍💻 Testes Front-End ##
Este projeto tem como objetivo realizar testes de front utilizando o Robot Framework no ambiente Qa.Coders.


## 💻 Requisitos ##
Antes de começar, certifique-se de ter os seguintes itens instalados:

- [Python](https://www.python.org/downloads/) (versão 3.9 ou superior)
- [Robot Framework](https://robotframework.org/) (versão mais recente)
- [Robot Framework-Faker](https://pypi.org/project/robotframework-faker/) (versão mais recente)
- [Robot PyYAML](https://pypi.org/project/PyYAML/) (versão mais recente)
- [RequestsLibrary](https://github.com/robotframework/RequestsLibrary) para testes de API
- [SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary/) biblioteca utilizada para o teste Web.


## ✔️ Instruções para a execução ##
Execute os testes usando o comando a seguir, substituindo nome_arquivo.robot pelo nome do arquivo que contém os seus casos de teste.
```bash
robot -d ./logs tests/nome_arquivo.robot
```


## 📚 Descrição dos Diretórios e Arquivos
- **tests/**: Contém arquivos de teste escritos em Robot Framework. Cada arquivo pode conter um ou mais casos de teste.

- **resources/**: Contém recursos adicionais que podem ser utilizados pelos testes, como:
  - **empresa_kws.resource/**: Arquivo de Keywords da suíte de empresa.
  - **login_kws.resource/**: Arquivo de Keywords da suíte de login.
  - **usuarios_kws.resource/**: Arquivo de Keywords da suíte de usuário.
  - **empresa_page.resource/**: Arquivo contendo todas as variaveis da page de empresas.
  - **login_page.resource/**: Arquivo contendo todas as variaveis da page de login.
  - **usuarios_page.resource/**: Arquivo contendo todas as variaveis da page de usuarios.
  - **utils_keywords.robot/**: Utilizado para armazenar recursos reutilizáveis também compartilhados entre vários arquivos do teste.
  - **package.resource/**: Onde são gerenciadas as dependencias da automação.

- **logs/**: Local onde os relatórios gerados após a execução dos testes são armazenados.

- **README.md**: Documento com informações sobre o projeto, como configuração, execução de testes, etc.


## 📁 Dependencias ##
```
├── .github/workflows
│   ├── robot-framework.yml
│   
├── fixtures
│   ├── data.yaml
│   ├── environments.yaml
│
├── logs
│   ├── log.html
│   ├── output.xml
│   ├── report.html
│   
├── resources
|   ├── package.resource
│   │  
|   ├── keywords
|   |   ├── cadastro_usuario_kws.resource
|   |   ├── cadastro_empresa_kws.resource
|   |   ├── login_kws.resource
|   |   ├── listar_usuario_kws.resource
│   │  
|   ├── pages
|   |   ├── empresa_page.robot
|   |   ├── login_page.robot
|   |   ├── usuarios_page.robot
│   │  
|   ├── shared
|   |   ├── utils_keywords.robot
│  
├── tests
│   ├── cadastro_empresa_web.robot
│   ├── cadastro_usuario_web.robot
│   ├── editar_usuario_web.robot
│   ├── login_web.robot
│   ├── listar_usuario_web.robot
│   
├──.gitignore
├── README.md
```