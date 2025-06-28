*** Settings ***
Resource            ../Resources/ResourcesAutomationAPI.robot
Resource            ../KeywordConstruction/KeywordConstructionAPI.robot

Suite Setup        Create Session    jsonplaceholder    https://jsonplaceholder.typicode.com


*** Test Cases ***

Garantir que o usuário consegue adicionar um novo usuário na lista de usuários
    Dado que estou com um dicionário criado e a requisição POST enviada com as informações do novo usuário
    Quando o status for igual a 201
    Então devo conseguir consultar pelo novo usuário adicionado