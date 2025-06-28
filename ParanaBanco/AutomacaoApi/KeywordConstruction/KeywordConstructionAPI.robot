*** Settings ***
Documentation        Essa suíte de teste será responsável pela construção de uma documentação em Gherkin automatizada

Resource            ../Resources/ResourcesAutomationAPI.robot


*** Keywords ***
Dado que estou com a sessão JSONPlaceholder criada
    Criar Sessao JSONPlaceholder

Quando eu envio uma requisição GET para "${ENDPOINT}"
    Enviar requisição GET para o "${endpoint}"

Então devo realizar a requisição, apresentando a resposta com status 200
    Verificar se o status da resposta é    200    ${response}

Dado que estou com um dicionário criado e a requisição POST enviada com as informações do novo usuário
    #Criar Sessao JSONPlaceholder
    Criar novo dicionário, realizando POST da requisição

Quando o status for igual a 201
    Verificar se o status da resposta é    201    ${response}


Então devo conseguir consultar pelo novo usuário adicionado
    Consultar pelo novo usuário criado




Dado que estou com um dicionário criado e a requisição PUT enviada com as informações atualizadas do usuário
    Editar usuário, realizando PUT da requisição


Quando o status for igual a 200
    Verificar se o status da resposta é    200    ${response}


Então devo conseguir consultar pelo usuário editado
    Consultar pelo usuário editado


Dado que estou enviando uma requisição do tipo DELETE para "/users/1"
    Excluir usuário, realizando DELETE da requisição


Então o status deve ser igual a 200
    Verificar se o status da resposta é    200    ${response}