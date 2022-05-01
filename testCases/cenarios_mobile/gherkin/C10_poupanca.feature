#language: pt

Funcionalidade: cadastrar poupança
Como cliente Kinvo quero cadastrar uam poupança 
na minha carteira usando a plataforma mobile

Esquema do Cenário: CT01 - O usuário não escolhe uma instituição financeira
Dado que eu esteja logado no aplicativo da Kinvo na opção de adicionar ativos
Quando selecionar a opção poupança
E não selecionar uma instituição financeira 
Então o botão “Avançar” deve permanecer inativo

Esquema do Cenário: CT02 - O usuário escolhe uma instituição financeira e clica em “Avançar”
Dado que eu esteja logado no aplicativo da Kinvo na opção de adicionar ativos
Quando selecionar a opção poupança
E escolher uma instituição financeira <instituição>
E clicar em “Avançar”
Então a tela de “Data e valor do investimento” deve ser exibida

#Tela de “Data e valor do investimento”

Esquema do Cenário: CT03 - O usuário não preenche a data de inicio e clica em “Avançar”
Dado que esteja na tela “Data e valor do investimento”
Quando preencher o valor aplicado <valor> maior que zero
E clicar em “Avançar”
Então a mensagem “Esse campo é requerido” deve ser exibida sob o campo de data do início

Esquema do Cenário: CT04 - O usuário não preenche o valor aplicado e clica em “Avançar”
Dado que esteja na tela “Data e valor do investimento”
Quando preencher a data de início válida <data_valida>
E clicar em “Avançar”
Então a mensagem “Esse campo é requerido” deve ser exibida sob o campo de valor aplicado

Esquema do Cenário: CT05 - O usuário preenche a data de início com valor inválido
Dado que esteja na tela “Data e valor do investimento”
Quando preencher data de início com valor inválido <data_invalida>
Então a mensagem “Informe uma data válida” deve ser exibida sob o campo de data de início

Esquema do Cenário: CT06 - O usuário preenche o valor aplicado com zero
Dado que esteja na tela “Data e valor do investimento”
Quando preencher a quantidade com zero
Então a mensagem “Por favor informe um valor maior que 0” deve ser exibida sob o campo de valor aplicado

Esquema do Cenário: CT07 - O usuário preenche todos os campos da tela de “Data e valor do investimento” com dados válidos e clica em “Avançar”
Dado que esteja na tela “Data e valor do investimento”
Quando preencher a data de início válida <data_valida>
E o valor aplicado <valor> maior que zero
E clicar em “Avançar”
Então a tela “Finalizar a adição da poupança” deve ser exibida

#Tela “Finalizar a adição da poupança”

Esquema do Cenário: CT08 - O usuário clica em “Adicionar”
Dado que esteja na tela “Finalizar a adição da poupança”
Quando clicar em “Adicionar”
Então será exibida a mensagem “Adicionado com Sucesso” e as opções “Adicionar um novo ativo”, “Adicionar uma nova poupança” e o botão de fechar.


Exemplos:
|instituição    |valor      |data_valida    |data_invalida  |   
|BANCO INTER    |R$10,00    |02/02/2020     |20/20/2020     |
|NUBANK         |R$40,00    |30/12/2018     |36/10/2017     |    