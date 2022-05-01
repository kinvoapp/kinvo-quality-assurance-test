#language: pt

Funcionalidade: cadastrar moeda
Como cliente Kinvo quero cadastrar uma aplicação em moeda estrangeira
na minha carteira usando a plataforma mobile

Esquema do Cenário: CT01 - O usuário não escolhe uma instituição financeira e clica em “Avançar”
Dado que eu esteja logado no aplicativo da Kinvo na opção de adicionar ativos
Quando selecionar a opção moeda
E clicar em “Avançar”
Então a tela de “Escolha a moeda” deve ser exibida

Esquema do Cenário: CT02 - O usuário escolhe uma instituição financeira e clica em “Avançar”
Dado que eu esteja logado no aplicativo da Kinvo na opção de adicionar ativos
Quando selecionar a opção moeda
E escolher uma instituição financeira <instituição>
E clicar em “Avançar”
Então a tela “Escolha a moeda” deve ser exibida

#Tela “Escolha a moeda”

Esquema do Cenário: CT03 - O usuário não seleciona o papel
Dado que eu esteja na tela “Escolha o papel”
Quando não selecionar uma moeda
Então o botão “Avançar” deve permanecer inativo

Esquema do Cenário: CT04 - O usuário seleciona o ativo e clica em “Avançar”
Dado que eu esteja na tela “Escolha o papel”
Quando selecionar uma moeda <moeda>
E clicar em “Avançar”
Então a tela “Informações Adicionais” deve ser exibida

#Tela “Informações Adicionais”

Esquema do Cenário: CT05 - O usuário não preenche a data de compra e clica em “Avançar”
Dado que esteja na tela “Informações adicionais”
Quando preencher o valor investido <valor> maior que zero
E a cotação <cotacao> maior que zero
E clicar em “Avançar”
Então a mensagem “Esse campo é requerido” deve ser exibida sob o campo de data da compra

Esquema do Cenário: CT06 - O usuário não preenche o valor investido e clica em “Avançar”
Dado que esteja na tela “Informações adicionais”
Quando preencher data da compra com valor válido <data_valida>
E a cotação <cotacao> maior que zero
E clicar em “Avançar”
Então a mensagem “Esse campo é requerido” deve ser exibida sob o campo de valor investido

Esquema do Cenário: CT07 - O usuário não preenche a cotação e clica em “Avançar”
Dado que esteja na tela “Informações adicionais”
Quando preencher data da compra com valor válido <data_valida>
E o valor investido <valor> maior que zero
E clicar em “Avançar”
Então a mensagem “Esse campo é requerido” deve ser exibida sob o campo de cotação

Esquema do Cenário: CT08 - O usuário preenche a data de compra com valor inválido
Dado que esteja na tela “Informações adicionais”
Quando preencher data da compra com valor inválido <data_invalida>
Então a mensagem “Informe uma data válida” deve ser exibida sob o campo de data da compra

Esquema do Cenário: CT09 - O usuário preenche valor investido com zero
Dado que esteja na tela “Informações adicionais”
Quando preencher o valor investido com zero
Então a mensagem “Por favor informe um valor maior que zero” deve ser exibida sob o campo de valor investido

Esquema do Cenário: CT10 - O usuário preenche a cotação com zero
Dado que esteja na tela “Informações adicionais”
Quando preencher a cotação e com zero
Então a mensagem “Por favor informe um valor maior que zero” deve ser exibida sob o campo de cotação

Esquema do Cenário: CT11 - O usuário preenche todos os campos com valores válidos e clica em “Avançar”
Dado que esteja na tela “Informações adicionais”
Quando preencher data da compra com valor válido <data_valida>
E valor investido <valor> maior que zero
E a cotação <cotacao> maior que zero
E clicar em “Avançar”
Então a tela “Finalizar a adição de moeda” deve ser exibida

#Tela “Finalizar a adição de moeda”

Esquema do Cenário: CT12 - O usuário clica em “Confirmar”
Dado que esteja na tela “Finalizar a adição de moeda”
Quando clicar em “Adicionar”
Então será exibida a mensagem “Adicionado com Sucesso” e as opções “Adicionar um novo ativo”, “Adicionar uma nova moeda” e o botão de fechar.

Exemplos:
|instituição    |moeda              |data_valida    |data_invalida    |cotacao  |quantidade |
|BANCO INTER    |EURO               |02/02/2020     |20/20/2020       |R$10,00  |1          |
|NUBANK         |LIBRA ESTERLINA    |30/12/2018     |36/10/2017       |R$40,00  |15         |
