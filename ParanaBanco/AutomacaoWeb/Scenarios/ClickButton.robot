*** Settings ***
Resource            ../Resources/ResourcesAutomationWeb.robot
Resource            ../KeywordConstruction/KeywordConstructionWeb.robot

Suite Setup          Abrir Navegador
Suite Teardown       Fechar Navegador

*** Test Cases ***

Garantir que o usuário consegue clicar no botão Azul
    [Tags]    web    regression    smoke
    Dado que estou acessando o Challenging DOM
    Então devo conseguir clicar no botão Azul


Garantir que o usuário consegue clicar no botão Vermelho
    [Tags]    web    regression    smoke
    Dado que estou acessando o Challenging DOM
    Então devo conseguir clicar no botão Vermelho


Garantir que o usuário consegue clicar no botão Verde
    [Tags]    web    regression    smoke
    Dado que estou acessando o Challenging DOM
    Então devo conseguir clicar no botão Verde