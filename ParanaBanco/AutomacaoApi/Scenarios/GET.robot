*** Settings ***
Resource            ../Resources/ResourcesAutomationAPI.robot
Resource            ../KeywordConstruction/KeywordConstructionAPI.robot

Suite Setup        Create Session    jsonplaceholder    https://jsonplaceholder.typicode.com


*** Test Cases ***

Garantir que o usuário consegue listar usuários por uma requisição GET
    [Tags]    api    get    regression
    Dado que estou com a sessão JSONPlaceholder criada
    Quando eu envio uma requisição GET para "${ENDPOINT}"
    Então devo realizar a requisição, apresentando a resposta com status 200