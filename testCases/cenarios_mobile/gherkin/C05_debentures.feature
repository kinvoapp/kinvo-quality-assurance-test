#language: pt

Funcionalidade: cadastrar debêntures
Como cliente Kinvo quero cadastrar uma debênture
na minha carteira usando a plataforma mobile

Esquema do Cenário: CT01 - O usuário não escolhe uma instituição financeira e clica em “Avançar”
Dado que eu esteja logado no aplicativo da Kinvo na opção de adicionar ativos
Quando selecionar a opção “Debêntures”
E clicar em “Avançar”
Então a tela de “Escolha o ativo” deve ser exibida

Esquema do Cenário: CT02 - O usuário escolhe uma instituição financeira e clica em “Avançar”
Dado que eu esteja logado no aplicativo da Kinvo na opção de adicionar ativos
Quando selecionar a opção “Debêntures”
E escolher uma instituição financeira <instituição>
E clicar em “Avançar”
Então a tela “Escolha o ativo” deve ser exibida

#Tela “Escolha o ativo”

Esquema do Cenário: CT03 - O usuário não seleciona o ativo
Dado que eu esteja na tela “Escolha o ativo”
Quando não selecionar um ativo
Então o botão “Avançar” deve permanecer inativo

Esquema do Cenário: CT04 - O usuário seleciona o ativo e clica em “Avançar”
Dado que eu esteja na tela “Escolha o ativo”
Quando selecionar um ativo <ativo>
E clicar em “Avançar”
Então a tela “Tipo de adição” deve ser exibida

#Tela “Tipo de adição”

Esquema do Cenário: CT05 - O usuário não seleciona um tipo de adição
Dado que eu esteja na tela “Tipo de adição”
Quando não selecionar um tipo de adição
Então o botão “Avançar” deve permanecer inativo

Esquema do Cenário: CT06 - O usuário seleciona um tipo de adição e clica em “Avançar”
Dado que eu esteja na tela “Tipo de adição”
Quando selecionar um tipo de adição <adicao>
E clicar em “Avançar”
Então a tela “Informações adicionais” deve ser exibida

#Tela “Informações adicionais” por por valor investido

Esquema do Cenário: CT07 - O usuário seleciona “Por Valor investido” e não preenche a data da compra e clica em “Avançar”
Dado que eu esteja na tela “Informações adicionais” e tenha escolhido a adição por valor investido
Quando preencher o valor do investimento <valor>
E clicar em “Avançar”
Então a mensagem “Esse campo é requerido” deve ser exibida sob o campo de data da compra

Esquema do Cenário: CT08 - O usuário seleciona “Por Valor investido” e não preenche o valor do investimento e clica em “Avançar”
Dado que eu esteja na tela “Informações adicionais” e tenha escolhido a adição por valor investido
Quando preencher a data da compra com valor válido <data_valida>
E clicar em “Avançar”
Então a mensagem “Esse campo é requerido” deve ser exibida sob o campo de valor do investimento

Esquema do Cenário: CT09 - O usuário seleciona “Por Valor investido” e preenche a data da compra com valor inválido
Dado que eu esteja na tela “Informações adicionais” e tenha escolhido a adição por valor investido
Quando preencher a data da compra com valor inválido <data_invalida>
Então a mensagem “Informe uma data válida” deve ser exibida sob o campo de valor do investimento

Esquema do Cenário: CT10 - O usuário seleciona “Por Valor investido” e preenche o valor do investimento com zero
Dado que eu esteja na tela “Informações adicionais” e tenha escolhido a adição por valor investido
Quando preencher o valor do investimento com 0
Então a mensagem “Por favor informe um valor maior que 0,00” deve ser exibida sob o campo de quantidade

Esquema do Cenário: CT11 - O usuário preenche o valor do investimento e a data da compra com valor válido e clica em “Avançar”
Dado que eu esteja na tela “Informações adicionais” e tenha escolhido a adição por valor investido
Quando preencher a data da compra com valor válido <data_valida>
E o valor do investimento <valor>
E clicar em “Avançar”
Então a tela “Confirme se os seus dados estão corretos” deve ser exibida

#Tela “Informações adicionais” por preço da cota e quantidade

Esquema do Cenário: CT12 - O usuário seleciona “Por preço da cota e quantidade” e não preenche a data da compra e clica em “Avançar”
Dado que eu esteja na tela “Informações adicionais” e tenha escolhido a adição por preço da cota e quantidade
Quando preencher o preço por cota <valor>
E a quantidade de cota <quantidade>
E clicar em “Avançar”
Então a mensagem “Esse campo é requerido” deve ser exibida sob o campo de data da compra

Esquema do Cenário: CT13 - O usuário seleciona “Por preço da cota e quantidade” e não preenche preço por cota e clica em “Avançar”
Dado que eu esteja na tela “Informações adicionais” e tenha escolhido a adição por preço da cota e quantidade
Quando preencher a data da compra com valor válido <data_valida>
E a quantidade de cota <quantidade>
E clicar em “Avançar”
Então a mensagem “Esse campo é requerido” deve ser exibida sob o campo de preço por cota

Esquema do Cenário: CT14 - O usuário seleciona “Por preço da cota e quantidade” e não preenche quantidade e clica em “Avançar”
Dado que eu esteja na tela “Informações adicionais” e tenha escolhido a adição por preço da cota e quantidade
Quando preencher a data da compra com valor válido <data_valida>
E o preço por cota <valor>
E clicar em “Avançar”
Então a mensagem “Esse campo é requerido” deve ser exibida sob o campo de quantidade

Esquema do Cenário: CT15 - O usuário seleciona “Por preço da cota e quantidade” e não preenche a data da compra com valor inválido
Dado que eu esteja na tela “Informações adicionais” e tenha escolhido a adição por preço da cota e quantidade
Quando preencher a data da compra com valor inválido <data_invalida>
Então a mensagem “informe uma data válida” deve ser exibida sob o campo de data da compra

Esquema do Cenário: CT16 - O usuário seleciona “Por preço da cota e quantidade” e preenche o preço por cota como zero
Dado que eu esteja na tela “Informações adicionais” e tenha escolhido a adição por preço da cota e quantidade
Quando preencher o preço por cota com 0
Então a mensagem “Por favor informe um valor maior que zero” deve ser exibida sob o campo de preço por cota

Esquema do Cenário: CT17 - O usuário seleciona “Por preço da cota e quantidade” e preenche a quantidade como zero
Dado que eu esteja na tela “Informações adicionais” e tenha escolhido a adição por preço da cota e quantidade
Quando preencher a quantidade com 0
Então a mensagem “Por favor informe um valor maior que zero” deve ser exibida sob o campo de quantidade

Esquema do Cenário: CT18 - O usuário preenche o preço da cota, a quantidade e a data da compra com valor válido
Dado que eu esteja na tela “Informações adicionais” e tenha escolhido a adição por preço da cota e quantidade
Quando preencher a data da compra com valor válido <data_valida>
E o preço por cota <valor>
E a quantidade de cota <quantidade>
E clicar em “Avançar”
Então a tela “Confirme se os seus dados estão corretos” deve ser exibida

#Tela “Confirme se os seus dados estão corretos”

Esquema do Cenário: CT19 - O usuário clica em “Adicionar”
Dado que esteja na tela “Confirme se os seus dados estão corretos”
Quando clicar em “Adicionar”
Então será exibida a mensagem “Adicionado com Sucesso” e as opções “Adicionar um novo ativo”, “Adicionar uma nova debênture”” e o botão de fechar.


Exemplos:
|instituição    |ativo              |data_valida    |data_invalida    |valor    |quantidade |adicao                          |
|BANCO INTER    |BEVE11: AMBEV      |02/02/2020     |20/20/2020       |R$10,00  |1          |por preço da cota e quantidade  |
|NUBANK         |ACEF11: ACEF S.A.  |30/12/2018     |36/10/2017       |R$40,00  |15         |por valor investido             |
