*** Settings ***
Resource            ../Resources/ResourcesAutomationWeb.robot
Resource            ../KeywordConstruction/KeywordConstructionWeb.robot

Test Setup           Abrir Navegador
Test Teardown        Fechar Navegador

*** Test Cases ***

Garantir que o usuário consegue clicar no botão Azul
    Dado que estou acessando o Challenging DOM
    Então devo conseguir clicar no botão Azul


Garantir que o usuário consegue clicar no botão Vermelho
    Dado que estou acessando o Challenging DOM
    Então devo conseguir clicar no botão Vermelho


Garantir que o usuário consegue clicar no botão Verde
    Dado que estou acessando o Challenging DOM
    Então devo conseguir clicar no botão Verde