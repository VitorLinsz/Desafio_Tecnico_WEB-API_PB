*** Settings ***
Resource            ../Resources/ResourcesAutomationWeb.robot
Resource            ../KeywordConstruction/KeywordConstructionWeb.robot

Suite Setup          Abrir Navegador
Suite Teardown       Fechar Navegador

*** Test Cases ***

Garantir que o usuário consegue clicar em todos os botões Excluir
    [Tags]    web    regression
    Dado que estou acessando o Challenging DOM
    Então devo conseguir clicar em todos os botões Excluir