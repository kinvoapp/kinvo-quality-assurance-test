#language: pt

Funcionalidade: cadastrar conta corrente
Como cliente Kinvo quero cadastrar uma conta corrente
na minha carteira usando a plataforma mobile


Esquema do Cenário: CT01 - O usuário não escolhe uma instituição financeira
Dado que eu esteja logado no aplicativo da Kinvo na opção de adicionar ativos
Quando selecionar a opção conta corrente
E não selecionar uma instituição financeira 
Então o botão “Avançar” deve permanecer inativo

Esquema do Cenário: CT02 - O usuário escolhe uma instituição financeira e clica em “Avançar”
Dado que eu esteja logado no aplicativo da Kinvo na opção de adicionar ativos
Quando selecionar a opção conta corrente
E escolher uma instituição financeira <instituição>
E clicar em “Avançar”
Então a tela de “Informações adicionais” deve ser exibida

#Tela de “Informações adicionais”

Esquema do Cenário: CT03 - O usuário não preenche a data de início e clica em “Avançar”
Dado que eu esteja na tela de “Informações adicionais”
Quando preencher o campo de valor aplicado <valor>
E clicar em “Avançar”
Então a mensagem “Esse campo é requerido” deve ser exibida sob o campo de data de início

Esquema do Cenário: CT04 - O usuário preenche a data de início com valor inválido e clica em “Avançar”
Dado que eu esteja na tela de “Informações adicionais”
Quando preencher o campo de data de início com um valor inválido <data_invalida>
E preencer o campo de valor aplicado <valor>
E clicar em “Avançar”
Então a mensagem “Informe uma data válida” deve ser exibida sob o campo de data de início

Esquema do Cenário: CT05 - O usuário não preenche o valor aplicado e clica em “Avançar”
Dado que eu esteja na tela de “Informações adicionais”
Quando preencher o campo de data de início com um valor válido <data_valida>
E clicar em “Avançar”
Então a mensagem “Esse campo é requerido” deve ser exibida sob o campo de valor aplicado

Esquema do Cenário: CT06 - O usuário preenche o valor aplicado com 0 e clica em “Avançar”
Dado que eu esteja na tela de “Informações adicionais”
Quando preencher o campo de data de início com um valor válido <data_valida>
E preencer o campo de valor aplicado com 0
E clicar em “Avançar”
Então a mensagem “Por favor informe um valor maior que 0,00” deve ser exibida sob o campo de valor aplicado

Esquema do Cenário: CT07 - O usuário preenche o valor aplicado e a data de início com valor válido e clica em “Avançar”
Dado que eu esteja na tela de “Informações adicionais”
Quando preencher o campo de data de início com um valor válido <data_valida>
E preencer o campo de valor aplicado <valor>
E clicar em “Avançar”
Então a tela de “Rentabilidade” deve ser exibida

#Tela “Rentabilidade”

Esquema do Cenário: CT08 - O usuário não preenche “% sobre o CDI” e clica em “Avançar”
Dado que eu esteja na tela de “Rentabilidade”
Quando cilcar em “Avançar”
Então a tela de “Finalizar a adição da conta corrente” deve ser exibida

Esquema do Cenário: CT09 - O usuário preenche “% sobre o CDI” e clica em “Avançar”
Dado que eu esteja na tela de “Rentabilidade”
Quando cilcar em preencher o campo “% sobre o CDI” <rentabilidade>
Então a tela de “Finalizar a adição da conta corrente” deve ser exibida

#Tela “Finalizar a adição da conta corrente”

Esquema do Cenário: CT10 - O usuário clica em “Finalizar”
Dado que eu esteja na tela de “Finalizar a adição da conta corrente”
Quando clicar em “Finalizar”
Então será exibida a mensagem “Adicionado com Sucesso” e as opções “Adicionar uma nova ativo”, “Adicionar uma nova conta corrente” e o botão de fechar.

Exemplos:
|instituição    |data_valida    |data_invalida    |valor    |rentabilidade |
|BANCO INTER    |02/02/2020     |20/20/2020       |R$10,00  |1%            |
|NUBANK         |30/12/2018     |36/10/2017       |R$40,00  |15%           |

