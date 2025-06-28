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
