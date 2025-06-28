*** Settings ***
Library            RequestsLibrary
Library            JSONLibrary
Library            Collections
Library            FakerLibrary
Library            JSONSchemaLibrary
Library            OperatingSystem

*** Variables ***
${URL}                                                                         https://jsonplaceholder.typicode.com
${ENDPOINT}                                                                    /users/2
${SCHEMA_GET}                                                                  C:\\Users\\Public\\ParanaBanco\\AutomacaoApi\\Schemas\\GET_Schema.json
${SCHEMA_POST}                                                                 C:\\Users\\Public\\ParanaBanco\\AutomacaoApi\\Schemas\\POST_Schema.json
${SCHEMA_PUT}                                                                  C:\\Users\\Public\\ParanaBanco\\AutomacaoApi\\Schemas\\PUT_Schema.json


*** Keywords ***

# GET
#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Criar Sessao JSONPlaceholder
    # Keyword responsável por startar a sessão
    Create Session    jsonplaceholder    ${URL}

Enviar requisição GET para o "${endpoint}"
    
    # Start da sessão
    Create Session    jsonplaceholder    ${URL}

    # Envio da requisição GET para buscar pelo usuário com ID 2
    ${response}=    GET On Session    jsonplaceholder    /users/2

    # Validação de status e save da resposta
    Status Should Be    200    ${response}
    Set Suite Variable    ${response}

    # Extração do corpo da resposta em formato JSON
    ${json}=    Call Method    ${response}    json

    # Pega o conteúdo do arquivo de Schema em formato de String
    ${schema_string}=    Get File    ${SCHEMA_GET}

    # Converte a string JSON do Schema para um dicionário Python
    ${schema}=    Evaluate    json.loads("""${schema_string}""")    json

    # Logs para depuração
    Log    SCHEMA: ${schema}
    Log    JSON RESPONSE: ${json}

    # Valida se a estrutura e os dados do Json estão conforme o schema esperado
    Validate Json By Schema    ${json}    ${schema}


Verificar se o status da resposta é
    [Arguments]    ${status}    ${response}
    Status Should Be    ${status}    ${response}

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------




# POST
#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Criar novo dicionário, realizando POST da requisição

    # Geração de nome e email usando FakerLibrary
    ${NOVO_NOME}     FakerLibrary.Name
    ${NOVO_EMAIL}    FakerLibrary.Email

    # Criação de dicionário JSON para enviar na requisição
    ${novo_usuario}=    Create Dictionary    name=${NOVO_NOME}     email=${NOVO_EMAIL} 
    
    # POST na sessão criada, guarda a resposta e salva variáveis
    ${response}=    POST On Session    jsonplaceholder    /users    json=${novo_usuario}
    Set Suite Variable    ${response}
    Set Suite Variable    ${NOVO_NOME}
    Set Suite Variable    ${NOVO_EMAIL}

    # Valida o status da resposta 201
    Verificar se o status da resposta é    201    ${response}

    # Extração do corpo da resposta em formato JSON
    ${json}=    Call Method    ${response}    json

    Log    JSON RESPONSE POST: ${json}

    # Pega o conteúdo do arquivo de Schema em formato de String
    ${schema_string}=    Get File    ${SCHEMA_POST}

    # Converte a string JSON do Schema para um dicionário Python
    ${schema}=    Evaluate    json.loads("""${schema_string}""")    json

    # Valida se a estrutura e os dados do Json estão conforme o schema esperado
    Validate Json By Schema    ${json}    ${schema}

Consultar pelo novo usuário criado
    # Resposta do POST contendo os dados criados
    ${json}=    Call Method    ${response}    json

    Should Be Equal As Strings    ${json['name']}    ${NOVO_NOME}
    Should Be Equal As Strings    ${json['email']}   ${NOVO_EMAIL}

    Log    Nome do novo usuário: ${NOVO_NOME}
    Log    Email do novo usuário: ${NOVO_EMAIL}

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------


# PUT
#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------


Editar usuário, realizando PUT da requisição

    # Geração de novos dados para edição com FakerLibrary
    ${EDICAO_NOME}=     FakerLibrary.Name
    ${EDICAO_EMAIL}=    FakerLibrary.Email

    # Criação de dicionário JSON para enviar na requisição
    ${usuario_atualizado}=    Create Dictionary    name=${EDICAO_NOME}    email=${EDICAO_EMAIL}

    # Envia PUT para atualizar usuário
    ${response}=    PUT On Session    jsonplaceholder    /users/1    json=${usuario_atualizado}
    Set Suite Variable    ${response}
    Set Suite Variable    ${EDICAO_NOME}
    Set Suite Variable    ${EDICAO_EMAIL}

    # Validação do status code
    Verificar se o status da resposta é    200    ${response}

    # Extração do corpo da resposta em formato JSON
    ${json}=    Call Method    ${response}    json
    Log    JSON RESPONSE PUT: ${json}

    # Pega o conteúdo do arquivo de Schema em formato de String
    ${schema_string}=    Get File    ${SCHEMA_PUT}

    # Converte a string JSON do Schema para um dicionário Python
    ${schema}=    Evaluate    json.loads("""${schema_string}""")    json

    # Valida se a estrutura e os dados do Json estão conforme o schema esperado
    Validate Json By Schema    ${json}    ${schema}


Consultar pelo usuário editado
    # Reutiliza a resposta já armazenada
    ${json}=    Call Method    ${response}    json

    # Valida se os dados estão atualizados corretamente
    Should Be Equal As Strings    ${json['name']}    ${EDICAO_NOME}
    Should Be Equal As Strings    ${json['email']}   ${EDICAO_EMAIL}

    Log    Nome do usuário editado: ${EDICAO_NOME}
    Log    Email do usuário editado: ${EDICAO_EMAIL}

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# DELETE

Excluir usuário, realizando DELETE da requisição
    ${response}=    DELETE On Session    jsonplaceholder    /users/1
    Set Suite Variable    ${response}

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
