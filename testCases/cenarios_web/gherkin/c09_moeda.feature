#language: pt

Funcionalidade: cadastrar Moeda
Como cliente Kinvo quero cadastrar uma aplicação em moeda estrangeira
 na minha carteira usando a plataforma web

Contexto: 
Dado que eu esteja logado no sistema dentro do painel de controle
E acesse o menu de adicionar produtos
E clique na opção Moedas

#Caminho feliz

Esquema do Cenário: CT01 - Preencher todos os campos com valores válidos
Quando seleciono a institução <instituicao>
E o tipo da moeda <moeda>
E informo a cotação <cotacao>
E o valor comprado <valor>
E informo a data de início com uma entrada válida <data_valida>
E clico em cadastrar
Então deve ser exibida a mensagem "Produto cadastrado com sucesso"

Esquema do Cenário: CT02 - Não preencher a instituição 
Quando seleciono o tipo da moeda
E informo a cotação <cotacao>
E o valor comprado <valor>
E informo a data de início com uma entrada válida <data_valida>
E clico em cadastrar
Então deve ser exibida a mensagem "Produto cadastrado com sucesso"

#Caminho Inválido

Esquema do Cenário: CT03 - Não selecionar a moeda
Quando seleciono a institução <instituicao>
E informo a cotação <cotacao>
E o valor comprado <valor>
E informo a data de início com uma entrada válida <data_valida>
E clico em cadastrar
Então deve ser exibida a mensagem "Informe o tipo da moeda" sob o campo Tipo de Moeda

Esquema do Cenário: CT04 - Não informar a cotação
Quando seleciono a institução <instituicao>
E o tipo da moeda <moeda>
E o valor comprado <valor>
E informo a data de início com uma entrada válida <data_valida>
E clico em cadastrar
Então deve ser exibida a mensagem "Informe a cotação" sob o campo Cotação

Esquema do Cenário: CT05 - Informar a cotação como zero
Quando seleciono a institução <instituicao>
E o tipo da moeda <moeda>
E informo a cotação como zero
E o valor comprado <valor>
E informo a data de início com uma entrada válida <data_valida>
E clico em cadastrar
Então deve ser exibida a mensagem "Falha ao processar a solicitação"

Esquema do Cenário: CT06 - Não informar o valor comprado
Quando seleciono a institução <instituicao>
E o tipo da moeda <moeda>
E informo a cotação <cotacao>
E informo a data de início com uma entrada válida <data_valida>
E clico em cadastrar
Então deve ser exibida a mensagem "Informe a cotação" sob o campo Preço

Esquema do Cenário: CT07 - Informar o valor comprado como zero
Quando seleciono a institução <instituicao>
E o tipo da moeda <moeda>
E informo a cotação <cotacao>
E o valor comprado 0
E informo a data de início com uma entrada válida <data_valida>
E clico em cadastrar
Então deve ser exibida a mensagem "Quantidade deve ser maior do que zero."

Esquema do Cenário: CT08 - Não preencher a data de início
Quando seleciono a institução <instituicao>
E o tipo da moeda <moeda>
E informo a cotação <cotacao>
E o valor comprado <valor>
E clico em cadastrar
Então deve ser exibida a mensagem "Informe a data de início" sob o campo Data de Início

Esquema do Cenário: CT09 - Preencher a data de início com uma entrada inválida
Quando seleciono a institução <instituicao>
E o tipo da moeda <moeda>
E informo a cotação <cotacao>
E o valor comprado <valor>
E informo a data de início com uma entrada inválida <data_invalida>
E clico em cadastrar
Então deve ser exibida a mensagem "Informe uma data válida" sob o campo Data de Início

Exemplos:
|instituicao        |moeda              |cotacao     |valor     |data_valida    | data_invalida    |
|BANCO INTER        |Euro               |R$5,00      |R$100,00  |02/02/2020     | 20/20/2020       |
|BANCO DO BRASIL    |Dólar Australiano  |R$5,00      |R$3,00    |30/12/2018     | 36/10/2017       |