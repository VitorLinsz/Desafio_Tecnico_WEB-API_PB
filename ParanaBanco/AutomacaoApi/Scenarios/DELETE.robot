*** Settings ***
Resource            ../Resources/ResourcesAutomationAPI.robot
Resource            ../KeywordConstruction/KeywordConstructionAPI.robot

Suite Setup        Create Session    jsonplaceholder    https://jsonplaceholder.typicode.com


*** Test Cases ***
Garantir que o usuário consegue remover um usuário da lista de usuários
    [Tags]    api    delete    regression
    Dado que estou enviando uma requisição do tipo DELETE para "/users/1" 
    Então o status deve ser igual a 200