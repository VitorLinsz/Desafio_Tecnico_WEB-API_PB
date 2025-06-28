*** Settings ***
Documentation        Essa suíte de teste será responsável pela construção de uma documentação em Gherkin automatizada

Resource            ../Resources/ResourcesAutomationWeb.robot


*** Keywords ***
Dado que estou acessando o Challenging DOM
    Abrir Navegador

Então devo conseguir clicar no botão Azul
    Clicar no botão azul 

Então devo conseguir clicar no botão Vermelho
    Clicar no botão vermelho 

Então devo conseguir clicar no botão Verde
    Clicar no botão verde


Então devo conseguir clicar em todos os botões Editar
    Clicar em todos os botões de Editar

Então devo conseguir clicar em todos os botões Excluir
    Clicar em todos os botões de Excluir