# Analista de Automação de Testes Sênior

## ✨ Parte 1 – Estratégia de Testes

### 1. Como você iniciaria uma estratégia de teste?

**Análise de negócio:** Realizar reuniões com a equipe de negócio e stakeholders para entender a dor do negócio. Alinhar fluxos principais, regras de negócio, funcionamento esperado e prioridades de entrega.

**Levantamento dos cenários de teste com Shift Left:** Realizar levantamento dos cenários antes da funcionalidade ser desenvolvida. O ideal é que os testes estejam finalizados antes do código para uso dos testes durante o desenvolvimento.

**Definição dos critérios de aceite:** Levantamento conjunto com negócio e stakeholders para definir a "definição de pronto".

**Criação dos cenários de testes:** Utilizar tipos e técnicas de testes para todo o ciclo de desenvolvimento. Importante definir também quais testes serão automatizados.

**Definição de execução dos cenários por prioridade:** Classificar criticidade dos cenários para priorizar execução, alinhado com a definição de pronto.

### 2. Quais abordagens de teste você consideraria?

* **Análise de risco do projeto:** Identificar fluxos mais críticos e testes obrigatórios.
* **BDD para padronização de testes e bugs:** Facilitar comunicação entre time técnico e de negócios.
* **Categorizacão de problemas:** Identificar causa raiz dos bugs e gerar métricas para retrospectivas.
* **Testes regressivos:** Desenvolver testes regressivos, priorizando automação
* **Implementação CI/CD:** Executar testes a cada merge/release nas branches.
* **Qualidade do código automatizado:** Monitorar métricas e identificar falsos positivos.

### 3. Como você trabalharia com diferentes tipos/níveis de teste?

**Testes Estruturais:**

* **Componente**: Microsserviços isolados
* **Integração**: Entre módulos internos/externos
* **Sistema (E2E)**
* **Funcionais Positivos e Negativos**
* **Não Funcionais:** Desempenho, carga, segurança e usabilidade
* **Caixa Branca:** Validação da lógica do código com devs

**Testes Relacionados à Mudança:**

* **Confirmação:** Após correção de bugs
* **Regressão:** Garantia de estabilidade
* **Manutenção:** Alterações de regras/funções

**Técnicas de Teste:**

* **Caixa-preta:** Comportamento/sintaxe
* **Caixa-branca:** Lógica do código
* **Baseado na experiência:** Exploratory Testing
* **Valor Limite:** Valores mínimos/máximos
* **Transição de Estados:** Validação de status
* **Casos de Uso:** Baseado no negócio

### 4. Quais ferramentas você consideraria usar?

| Tipo           | Ferramentas                                |
| -------------- | ------------------------------------------ |
| UI             | RobotFramework, Cypress                    |
| API            | RobotFramework, Postman, Swagger, Insomnia |
| Performance    | JMeter, K6                                 |
| Mobile         | RobotFramework, Appium, AppiumInspector    |
| Tarefas        | Jira                                       |
| Banco de Dados | SQL Server                                 |
| Métricas       | Grafana, Allure Reports                    |
| CI/CD          | Jenkins, Gitlab CI                         |

### 5. Como você se imagina atuando nessa equipe?

Atuaria desde o início aplicando **Shift-left testing**, contribuindo em planejamento, definição de critérios de aceite e execução de testes. Também participaria ativamente do time, apoiando e sendo apoiado por pessoas de negócio, devs e demais membros do time. Contribuiria com **testes automatizados**, alimentando o fluxo de CI/CD e garantindo confiabilidade das entregas com cobertura regressiva.




## 🗂 Estrutura do Projeto

```
automacaoweb/
│
├── KeywordConstruction/
│   └── KeywordConstructionWeb.robot          # Arquivo responsável pela documentação automatizada em Gherkin (BDD)
│
├── Resources/
│   └── ResourcesAutomationWeb.robot          # Recurso central que importa bibliotecas e configurações para os testes web
│
├── Scenarios/
│   ├── ClickButton.robot                     # Teste que realiza clique nos 3 botões principais (azul, vermelho, verde)
│   ├── DeleteButton.robot                    # Teste que realiza clique em todos os botões "delete" da grid
│   └── EditButton.robot                      # Teste que realiza clique em todos os botões "edit" da grid


automacaoapi/
│
├── KeywordConstruction/
│   └── KeywordConstructionAPI.robot          # Arquivo responsável pela documentação automatizada em Gherkin (BDD)
│
├── Resources/
│   └── ResourcesAutomationAPI.robot          # Recurso central que importa bibliotecas e configurações para os testes de API
│
├── Scenarios/
│   ├── DELETE.robot                          # Teste de validação do verbo HTTP DELETE
│   ├── GET_Schema.robot                      # Teste de validação do verbo HTTP GET e validação de schema
│   ├── POST_Schema.robot                     # Teste de validação do verbo HTTP POST e validação de schema
│   └── PUT_Schema.robot                      # Teste de validação do verbo HTTP PUT e validação de schema
│
├── Schemas/
│   ├── GET_Schema.json                       # Schema JSON para validação do GET
│   ├── POST_Schema.json                      # Schema JSON para validação do POST
│   └── PUT_Schema.json                       # Schema JSON para validação do PUT

```

## 🧱 Arquitetura do Projeto de Testes Automatizados
A automação foi estruturada com base no conceito de separação de responsabilidades, utilizando uma arquitetura similar ao POM (Page Object Model), com adaptações para testes de interface e API utilizando Robot Framework.

### 📌 Objetivos da Arquitetura
* **Tornar o projeto escalável**
* **Facilitar a manutenção dos testes**
* **Permitir o reuso de código**
* **Separar lógica de negócio, estrutura de testes e recursos**


## ✅ Pré-requisitos
Antes de rodar o projeto, é necessário garantir que os seguintes softwares estejam instalados na sua máquina:
* **Python 3.8+**
* **Google Chrome**
* **ChromeDriver (compatível com a versão do seu Chrome)**
* **pip – Gerenciador de pacotes do Python**

## 📄 Documentação de Instalação:
Segue arquivo PDF com o passo a passo completo para instalação do Python, Robot Framework e ChromeDriver incluso neste repositório.
Consulte o arquivo [Guia de Instalação]([[./Guia_de_instalacao.pdf](https://github.com/VitorLinsz/Desafio_Tecnico_WEB-API_PB/blob/main/ParanaBanco/GuiaDeInstala%C3%A7%C3%A3oRobot/Guia_de_instalac%CC%A7a%CC%83o_Robot_Framework.pdf)](https://github.com/VitorLinsz/Desafio_Tecnico_WEB-API_PB/tree/main/ParanaBanco/GuiaDeInstala%C3%A7%C3%A3oRobot)) para orientações detalhadas de configuração do ambiente.

## 📦 Instalação das dependências
As bibliotecas utilizadas no projeto estão listadas no arquivo **requirements.txt.**
Para instalar todas as dependências necessárias, execute o seguinte comando no terminal:

```bash
pip install -r requirements.txt
```


## ✅ Bibliotecas utilizadas
O projeto utiliza as seguintes bibliotecas para automação de testes web e API:

```
| Biblioteca                         | Descrição                                           |
| ---------------------------------- | --------------------------------------------------- |
| `robotframework`                   | Framework principal para automação de testes        |
| `robotframework-seleniumlibrary`   | Suporte para testes em interfaces web com Selenium  |
| `robotframework-requests`          | Suporte para testes de APIs REST                    |
| `robotframework-jsonlibrary`       | Manipulação e verificação de JSON                   |
| `robotframework-faker`             | Geração de dados falsos para testes dinâmicos       |
| `robotframework-jsonschemalibrary` | Validação de JSON Schema                            |
| `chromedriver`                     | Driver necessário para execução no navegador Chrome |
```
