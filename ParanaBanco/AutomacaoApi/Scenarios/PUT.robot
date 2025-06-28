*** Settings ***
Resource            ../Resources/ResourcesAutomationAPI.robot
Resource            ../KeywordConstruction/KeywordConstructionAPI.robot

Suite Setup        Create Session    jsonplaceholder    https://jsonplaceholder.typicode.com


*** Test Cases ***

Garantir que o usuário consegue atualizar o cadastro de um usuário na lista de usuários
    [Tags]    api    put    regression
    Dado que estou com um dicionário criado e a requisição PUT enviada com as informações atualizadas do usuário
    Quando o status for igual a 200
    Então devo conseguir consultar pelo usuário editado

