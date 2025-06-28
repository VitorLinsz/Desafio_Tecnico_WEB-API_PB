*** Settings ***
Resource            ../Resources/ResourcesAutomationAPI.robot
Resource            ../KeywordConstruction/KeywordConstructionAPI.robot

Suite Setup        Create Session    jsonplaceholder    https://jsonplaceholder.typicode.com


*** Test Cases ***
Garantir que o usuário consegue atualizar o cadastro de um usuário na lista de usuários
    Dado que estou enviando uma requisição do tipo DELETE para "/users/1" 
    Então o status deve ser igual a 200