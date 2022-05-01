#language: pt

Funcionalidade: cadastrar Criptomoeda
Como cliente Kinvo quero cadastrar uma aplicação em Criptomoeda 
na minha carteira usando a plataforma web

Contexto: 
Dado que eu esteja logado no sistema dentro do painel de controle
E acesse o menu de adicionar produtos
E clique na opção Criptomoeda

Esquema do Cenário: CT01 - Preencher todos os campos com valores válidos
Quando seleciono a institução <instituicao>
E seleciono o tipo de criptomoeda <cripto>
E preencho a quantidade <quantidade>
E a cotação <cotacao>
E preencho da data de início com valores válidos <data_valida>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Produto cadastrado com sucesso"

Esquema do Cenário: CT02 - Não preencher instituição financeira
Quando seleciono o tipo de criptomoeda <cripto>
E preencho a quantidade <quantidade>
E a cotação <cotacao>
E preencho da data de início com valores válidos <data_valida>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Produto cadastrado com sucesso"

Esquema do Cenário: CT03 - Não selecionar o tipo de criptomoeda
Quando seleciono a institução <instituicao>
E preencho a quantidade <quantidade>
E a cotação <cotacao>
E preencho da data de início com valores válidos <data_valida>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Informe o tipo de moeda" sob o campo Tipo de Moeda

Esquema do Cenário: CT04 - Não prencher a quantidade
Quando seleciono a institução <instituicao>
E seleciono o tipo de criptomoeda <cripto>
E a cotação <cotacao>
E preencho da data de início com valores válidos <data_valida>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "informe a quantidade" sob o campo quantidade

Esquema do Cenário: CT05 - Prencher a quantidade como zero
Quando seleciono a institução <instituicao>
E seleciono o tipo de criptomoeda <cripto>
E preencho a quantidade com zero
E a cotação <cotacao>
E preencho da data de início com valores válidos <data_valida>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Quantidade deve ser maior do que zero."

Esquema do Cenário: CT06 - Não indica a cotação
Quando seleciono a institução <instituicao>
E preencho a quantidade <quantidade>
E preencho da data de início com valores válidos <data_valida>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Informe a cotação" sob o campo cotação

Esquema do Cenário: CT07 - Prencher a quantidade como zero
Quando seleciono a institução <instituicao>
E seleciono o tipo de criptomoeda <cripto>
E preencho a quantidade <quantidade>
E a cotação como zero 0
E preencho da data de início com valores válidos <data_valida>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "O valor da movimentação deve ser maior que zero."

Esquema do Cenário: CT08 - Não preencher a data de início
Quando seleciono a institução <instituicao>
E seleciono o tipo de criptomoeda <cripto>
E preencho a quantidade <quantidade>
E a cotação <cotacao>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Informe a data de início" sob o campo data de início

Esquema do Cenário: CT09 - Prencher a data de início com valores inválidos
Quando seleciono a institução <instituicao>
E seleciono o tipo de criptomoeda <cripto>
E preencho a quantidade <quantidade>
E a cotação <cotacao>
E preencho da data de início com valores inválidos <data_invalida>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Informe uma data válida" sob o campo data de início


Exemplos:
|instituicao     |cripto |quantidade  |cotacao   |data_valida    | data_invalida    |
|BANCO INTER     |BCash  |1223        |R$100,00  |02/02/2020     | 20/20/2020       |
|BANCO DO BRASIL |DOGE   |1           |R$3,00    |30/12/2018     | 36/10/2017       |