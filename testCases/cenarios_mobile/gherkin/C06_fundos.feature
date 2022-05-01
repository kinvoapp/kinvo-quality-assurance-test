#language: pt

Funcionalidade: cadastrar fundos
Como cliente Kinvo quero cadastrar um fundo
na minha carteira usando a plataforma mobile

Esquema do Cenário: CT01 - O usuário não escolhe uma instituição financeira
Dado que eu esteja logado no aplicativo da Kinvo na opção de adicionar ativos
Quando selecionar a opção fundos
E não selecionar uma instituição financeira 
Então o botão “Avançar” deve permanecer inativo

Esquema do Cenário: CT02 - O usuário escolhe uma instituição financeira e clica em “Avançar”
Dado que eu esteja logado no aplicativo da Kinvo na opção de adicionar ativos
Quando selecionar a opção conta corrente
E escolher uma instituição financeira <instituição>
E clicar em “Avançar”
Então a tela de “Escolha o fundo” deve ser exibida

#Tela “Escolha o fundo”

Esquema do Cenário: CT03 - O usuário não seleciona o fundo
Dado que eu esteja na tela “Escolha o fundo”
Quando não selecionar um ativo
Então o botão “Avançar” deve permanecer inativo

Esquema do Cenário: CT04 - O usuário seleciona o fundo e clica em “Avançar”
Dado que eu esteja na tela “Escolha o fundo”
Quando selecionar um fundo <fundo>
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
|instituição    |fundo                                                          |data_valida    |data_invalida    |valor    |quantidade |adicao                          |
|BANCO INTER    |COSTUMER FUNDO DE INVESTIMENTO RENDA FIXA                      |02/02/2020     |20/20/2020       |R$10,00  |1          |por preço da cota e quantidade  |
|NUBANK         |SUDAMERIS FUNDO DE INVESTIMENTO CURTO PRAZO INVESTIDOR PLUS    |30/12/2018     |36/10/2017       |R$40,00  |15         |por valor investido             |

