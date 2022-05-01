#language: pt

Funcionalidade: cadastrar Ações, Stock, e ETF
Como cliente Kinvo quero cadastrar Ações, Stock, e ETF 
na minha carteira usando a plataforma mobile

Esquema do Cenário: CT01 - O usuário escolhe uma instituição financeira e clica em “Avançar”
Dado que eu esteja logado no aplicativo da Kinvo na opção de adicionar ativos
Quando selecionar a opção Ações, Stock, e ETF
E escolher uma instituição financeira <instituição>
E clicar em “Avançar”
Então a tela de Escolha do papel deve ser exibida

#Tela Escolha do papel

Esquema do Cenário: CT02 - O usuário não escolhe uma instituição financeira e clica em “Avançar”
Dado que eu esteja logado no aplicativo da Kinvo na opção de adicionar ativos
Quando selecionar a opção Ações, Stock, e ETF
E clicar em “Avançar”
Então a tela de Escolha do papel deve ser exibida

Esquema do Cenário: CT03 - O usuário não escolhe uma opção de papel 
Dado que eu esteja na tela de escolha do papel
E não selecione um papel
Então o botão “Avançar” deve permanecer inativo

Esquema do Cenário: CT04 - O usuário escolhe uma opção de papel e clica em “Avançar”
Dado que eu esteja na tela de escolha do papel
Quando selecionar um papel <papel> 
E clicar em “Avançar”
Então a tela de informações adicionais deve ser exibida

#Tela Informações adicionais

Esquema do Cenário: CT05 - O usuário não preenche a data de compra e clica em “Avançar”
Dado que eu esteja na tela de informações adicionais
E não preencha a data de compra 
Quando clicar em “Avançar”
Então a mensagem “Esse campo é requerido” deve ser exibida sob o campo de data da compra

Esquema do Cenário: CT06 - O usuário preenche a data de compra com valor inválido
Dado que eu esteja na tela de informações adicionais
Quando preencher a data de compra com um valor inválido <data_invalida>
Então a mensagem “Informe uma data válida” deve ser exibida sob o campo de data da compra

Esquema do Cenário: CT07 - O usuário preenche a data de compra com valor válido
Dado que eu esteja na tela de informações adicionais
Quando preencher a data de compra com um valor válido <data_valida>
Então os campos “Quantidade”, “Preço” e “Taxa” devem ser exibibos

Esquema do Cenário: CT08 - O usuário preenche todos os campos menos “Quantidade” e clica em “Avançar”
Dado que os campos “Quantidade”, “Preço” e “Taxa” tenham sido exibibos
Quando preencher o preço <preco>
E preencher a taxa <taxa>
Quando clicar em “Avançar”
Então a mensagem “Esse campo é requerido” deve ser exibida sob o campo “Quantidade”

Esquema do Cenário: CT09 - O usuário preenche o campo “Quantidade” com 0 e clica em “Avançar”
Dado que os campos “Quantidade”, “Preço” e “Taxa” tenham sido exibibos
Quando preencher quantidade com 0
E preencher o preço <preco>
E preencher a taxa <taxa>
Quando clicar em “Avançar”
Então a mensagem “Por favor, informe um valor maior que 0” deve ser exibida sob o campo “Quantidade”

Esquema do Cenário: CT10 - O usuário preenche todos os campos menos “Preço” e clica em “Avançar”
Dado que os campos “Quantidade”, “Preço” e “Taxa” tenham sido exibibos
Quando eu preencher a quantidade <quantidade>
E preencher a taxa <taxa>
Quando clicar em “Avançar”
Então a mensagem “Esse campo é requerido” deve ser exibida sob o campo “Preço”

Esquema do Cenário: CT11 - O usuário preenche o campo “Preço” com 0 e clica em “Avançar”
Dado que os campos “Quantidade”, “Preço” e “Taxa” tenham sido exibibos
Quando eu preencher a quantidade <quantidade>
E preencher o preço com 0
E preencher a taxa <taxa>
Quando clicar em “Avançar”
Então a mensagem “Por favor, informe um valor maior que 0” deve ser exibida sob o campo “Preço”

Esquema do Cenário: CT12 - O usuário preenche todos os campos, menos “Taxa” e clica em “Avançar”
Dado que os campos “Quantidade”, “Preço” e “Taxa” tenham sido exibibos
Quando eu preencher a quantidade <quantidade>
E preencher o preço <preco>
Quando clicar em “Avançar”
Então a tela de “Finalizar a adição da ação” deve ser exibida

Esquema do Cenário: CT13 - O usuário preenche todos os campos e clica em “Avançar”
Dado que os campos “Quantidade”, “Preço” e “Taxa” tenham sido exibibos
Quando eu preencher a quantidade <quantidade>
E preencher o preço <preco>
E preencher a taxa <taxa>
Quando clicar em “Avançar”
Então a tela de “Finalizar a adição da ação” deve ser exibida

#Tela “Finalizar a adição da ação”

Esquema do Cenário: CT14 - O usuário clica em “Adicionar”
Dado que eu esteja na tela de “Finalizar a adição da ação”
Quando clicar em “Adicionar”
Então será exibida a mensagem “Adicionado com Sucesso” e as opções “Adicionar um novo ativo”, “Adicionar uma nova ação” e o botão de fechar.



Exemplos:
|instituição    |papel                      |data_valida    |data_invalida    |preco    |taxa       |quantidade |
|BANCO INTER    |MGLU3: MAGAZ LUIZA ON NM   |02/02/2020     |20/20/2020       |R$10,00  |R$0,10     |1          |
|NUBANK         |AMZG3: AMAZONAS ENEON      |30/12/2018     |36/10/2017       |R$40,00  |R$15,00    |99         |
