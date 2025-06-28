*** Settings ***
Resource            ../Resources/ResourcesAutomationWeb.robot
Resource            ../KeywordConstruction/KeywordConstructionWeb.robot

Test Setup           Abrir Navegador
Test Teardown        Fechar Navegador

*** Test Cases ***

Garantir que o usuário consegue clicar em todos os botões Editar
    Dado que estou acessando o Challenging DOM
    Então devo conseguir clicar em todos os botões Editar