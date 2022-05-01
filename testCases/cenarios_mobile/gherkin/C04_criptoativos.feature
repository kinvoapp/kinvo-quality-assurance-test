#language: pt

Funcionalidade: cadastrar criptoativos
Como cliente Kinvo quero cadastrar um criptoativo
na minha carteira usando a plataforma mobile

Esquema do Cenário: CT01 - O usuário não escolhe uma instituição financeira e clica em “Avançar”
Dado que eu esteja logado no aplicativo da Kinvo na opção de adicionar ativos
Quando selecionar a opção criptoativos
E clicar em “Avançar”
Então a tela de “Escolha o criptoativo” deve ser exibida

#Tela “Escolha o criptoativo”

Esquema do Cenário: CT02 - O usuário escolhe uma instituição financeira e clica em “Avançar”
Dado que eu esteja logado no aplicativo da Kinvo na opção de adicionar ativos
Quando selecionar a opção criptoativos
E escolher uma instituição financeira <instituição>
E clicar em “Avançar”
Então a tela “Escolha o criptoativo” deve ser exibida

Esquema do Cenário: CT03 - O usuário não seleciona o criptoativo
Dado que eu esteja na tela “Escolha o criptoativo”
Quando não selecionar um criptoativo
Então o botão “Avançar” deve permanecer inativo

Esquema do Cenário: CT04 - O usuário seleciona o criptoativo
Dado que eu esteja na tela “Escolha o criptoativo”
Quando selecionar um criptoativo <criptoativo>
E clicar em “Avançar”
Então a tela “Informações adicionais” deve ser exibida

Esquema do Cenário: CT05 - O usuário não preenche a data de compra e clica em “Avançar”
Dado que esteja na tela “Informações adicionais”
Quando preencher a quantidade <quantidade> maior que zero
E a cotação <cotacao> maior que zero
E clicar em “Avançar”
Então a mensagem “Esse campo é requerido” deve ser exibida sob o campo de data da compra

Esquema do Cenário: CT06 - O usuário não preenche a quantidade e clica em “Avançar”
Dado que esteja na tela “Informações adicionais”
Quando preencher data da compra com valor válido <data_valida>
E a cotação <cotacao> maior que zero
E clicar em “Avançar”
Então a mensagem “Esse campo é requerido” deve ser exibida sob o campo de quantidade

Esquema do Cenário: CT07 - O usuário não preenche a cotação e clica em “Avançar”
Dado que esteja na tela “Informações adicionais”
Quando preencher data da compra com valor válido <data_valida>
E a quantidade <quantidade> maior que zero
E clicar em “Avançar”
Então a mensagem “Esse campo é requerido” deve ser exibida sob o campo de cotação

Esquema do Cenário: CT08 - O usuário preenche a data de compra com valor inválido
Dado que esteja na tela “Informações adicionais”
Quando preencher data da compra com valor inválido <data_invalida>
Então a mensagem “Informe uma data válida” deve ser exibida sob o campo de data da compra

Esquema do Cenário: CT09 - O usuário preenche a quantidade com zero
Dado que esteja na tela “Informações adicionais”
Quando preencher quantidade com zero
Então a mensagem “Por favor informe um valor maior que zero” deve ser exibida sob o campo de quantidade

Esquema do Cenário: CT10 - O usuário preenche a cotação com zero
Dado que esteja na tela “Informações adicionais”
Quando preencher a cotação e com zero
Então a mensagem “Por favor informe um valor maior que zero” deve ser exibida sob o campo de cotação

Esquema do Cenário: CT11 - O usuário não preenche a quantidade e clica em “Avançar”
Dado que esteja na tela “Informações adicionais”
Quando preencher data da compra com valor válido <data_valida>
E a quantidade <quantidade> maior que zero
E a cotação <cotacao> maior que zero
E clicar em “Avançar”
Então a tela “Finalizar a adição de criptoativos” deve ser exibida

Esquema do Cenário: CT12 - O usuário clica em “Confirmar”
Dado que esteja na tela “Finalizar a adição de criptoativos”
Quando clicar em “Confirmar”
Então será exibida a mensagem “Adicionado com Sucesso” e as opções “Adicionar um novo ativo”, “Adicionar um novo criptoativo”” e o botão de fechar.

Exemplos:
|instituição    |criptoativo   |data_valida    |data_invalida    |cotacao  |quantidade |
|BANCO INTER    |ETHEREUM      |02/02/2020     |20/20/2020       |R$10,00  |1          |
|NUBANK         |BITCOIN       |30/12/2018     |36/10/2017       |R$40,00  |15         |
