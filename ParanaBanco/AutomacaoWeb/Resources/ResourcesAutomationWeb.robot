*** Settings ***
Documentation        Essa suíte de teste será responsável por armazenar todos os recursos utilizados pelo Robot

Library              SeleniumLibrary
Library              Collections
*** Variables ***
${URL}                    https://the-internet.herokuapp.com/challenging_dom




*** Keywords ***
Abrir Navegador
    Open Browser        ${URL}        browser=chrome
    Maximize Browser Window

Fechar Navegador
    Close All Browsers



Clicar no botão azul 
    Wait Until Element Is Visible                                              css=a.button
    Click Element                                                              css=a.button


Clicar no botão vermelho
    Wait Until Element Is Visible                                              css=a.button.alert
    Click Element                                                              css=a.button.alert  


Clicar no botão verde
    Wait Until Element Is Visible                                              css=a.button.success
    Click Element                                                              css=a.button.success


Clicar em todos os botões de Editar
    Wait Until Page Contains Element                                           xpath=//a[@href="#edit"]
    ${LISTA_BOTOES_EDIT}=    Get WebElements                                   xpath=//a[@href="#edit"]
    ${TAMANHO}=    Get Length    ${LISTA_BOTOES_EDIT}
    FOR    ${index}    IN RANGE    ${TAMANHO}
        ${elemento}=        Get From List        ${LISTA_BOTOES_EDIT}    ${index}
        Click Element    ${elemento}
        Sleep    1s
    END

Clicar em todos os botões de Excluir
    Wait Until Page Contains Element                                           xpath=//a[@href="#delete"]
    ${LISTA_BOTOES_EDIT}=    Get WebElements                                   xpath=//a[@href="#delete"]
    ${TAMANHO}=    Get Length    ${LISTA_BOTOES_EDIT}
    FOR    ${index}    IN RANGE    ${TAMANHO}
        ${elemento}=        Get From List        ${LISTA_BOTOES_EDIT}    ${index}
        Click Element    ${elemento}
        Sleep    1s
    END