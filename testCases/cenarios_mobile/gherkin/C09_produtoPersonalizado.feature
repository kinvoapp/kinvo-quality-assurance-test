#language: pt

Funcionalidade: cadastrar produto personalizado
Como cliente Kinvo quero cadastrar um produto personalizado
na minha carteira usando a plataforma mobile

Esquema do Cenário: CT01 - O usuário não escolhe uma instituição financeira e clica em “Avançar”
Dado que eu esteja logado no aplicativo da Kinvo na opção de adicionar ativos
Quando selecionar a opção Personalizados
E clicar em “Avançar”
Então a tela de “Adicionar Ativo Personalizado” deve ser exibida

Esquema do Cenário: CT02 - O usuário escolhe uma instituição financeira e clica em “Avançar”
Dado que eu esteja logado no aplicativo da Kinvo na opção de adicionar ativos
Quando selecionar a opção Personalizados
E escolher uma instituição financeira <instituição>
E clicar em “Avançar”
Então a tela “Informações adicionais” deve ser exibida

# Tela “Informações adicionais”

Esquema do Cenário: CT03 - O usuário não preenche a data de inicio e clica em “Avançar”
Dado que esteja na tela “Informações adicionais”
Quando preencher o nome <nome>
E a quantidade <quantidade> maior que zero
E o preço unitário <valor> maior que zero
E clicar em “Avançar”
Então a mensagem “Esse campo é requerido” deve ser exibida sob o campo de data do início

Esquema do Cenário: CT04 - O usuário não preenche o nome e clica em “Avançar”
Dado que esteja na tela “Informações adicionais”
Quando preencher a data de início válida <data_valida>
E a quantidade <quantidade> maior que zero
E o preço unitário <valor> maior que zero
E clicar em “Avançar”
Então a mensagem “Esse campo é requerido” deve ser exibida sob o campo de nome

Esquema do Cenário: CT05 - O usuário não preenche a quantidade e clica em “Avançar”
Dado que esteja na tela “Informações adicionais”
Quando preencher a data de início válida <data_valida>
E o nome <nome>
E o preço unitário <valor> maior que zero
E clicar em “Avançar”
Então a mensagem “Esse campo é requerido” deve ser exibida sob o campo de quantidade

Esquema do Cenário: CT06 - O usuário não preenche o preço unitário e clica em “Avançar”
Dado que esteja na tela “Informações adicionais”
Quando preencher a data de início válida <data_valida>
E o nome <nome>
E a quantidade <quantidade> maior que zero
E clicar em “Avançar”
Então a mensagem “Esse campo é requerido” deve ser exibida sob o campo de quantidade

Esquema do Cenário: CT07 - O usuário preenche a data de início com valor inválido
Dado que esteja na tela “Informações adicionais”
Quando preencher data de início com valor inválido <data_invalida>
Então a mensagem “Informe uma data válida” deve ser exibida sob o campo de data de início

Esquema do Cenário: CT08 - O usuário preenche a quantidade com zero
Dado que esteja na tela “Informações adicionais”
Quando preencher a quantidade com zero
Então a mensagem “Por favor informe um valor maior que 0” deve ser exibida sob o campo de quantidade

Esquema do Cenário: CT09 - O usuário preenche o preço unitário com zero
Dado que esteja na tela “Informações adicionais”
Quando preencher o preço unitário com zero
Então a mensagem “Por favor informe um valor maior que 0” deve ser exibida sob o campo de preço unitário

Esquema do Cenário: CT10 - O usuário preenche todos os campos da tela de “Informações adicionais” com dados válidos e clica em “Avançar”
Dado que esteja na tela “Informações adicionais”
Quando preencher a data de início válida <data_valida>
E o nome <nome>
E a quantidade <quantidade> maior que zero
E o preço unitário <valor> maior que zero
E clicar em “Avançar”
Então a tela “Escolha a metodologia” deve ser exibida

#Tela “Escolha a metodologia”

Esquema do Cenário: CT11 - O usuário não seleciona um método
Dado que eu esteja na tela “Escolha a metodologia”
Quando não selecionar um método
Então o botão “Avançar” deve permanecer inativo

Esquema do Cenário: CT12 - O usuário seleciona um método e clica em “Avançar”
Dado que eu esteja na tela “Escolha a metodologia”
Quando não selecionar um método <metodo>
Então  a tela “Confirme se os seus dados estão corretos” deve ser exibida

#Tela “Confirme se os seus dados estão corretos”

Esquema do Cenário: CT13 - O usuário clica em “Adicionar”
Dado que esteja na tela “Confirme se os seus dados estão corretos”
Quando clicar em “Adicionar”
Então será exibida a mensagem “Adicionado com Sucesso” e as opções “Adicionar um novo ativo”, “Adicionar um novo produto personalizado” e o botão de fechar.

Exemplos:
|instituição    |nome       |quantidade |valor      |metodo                     |data_valida    |data_invalida  |   
|BANCO INTER    |persona    |1          |R$10,00    |Por valor financeiro       |02/02/2020     |20/20/2020     |
|NUBANK         |persona    |10         |R$40,00    |Por variação percentual    |30/12/2018     |36/10/2017     |               