#language: pt

Funcionalidade: cadastrar Previdência
Como cliente Kinvo quero cadastrar uma previdência na minha carteira usando a plataforma web

Contexto: 
Dado que eu esteja logado no sistema dentro do painel de controle
E acesse o menu de adicionar produtos
E clique na opção Previdência

#Caminho feliz

Esquema do Cenário: CT01 - Preencher todos os campos com valores válidos
Quando seleciono uma instituicao financeira <instituicao>
E seleciono o fundo <fundo>
E preencho o valor aplicado <valor> maior que zero
E preencho a data de inicio com uma entrada válida <data_valida>
Então deve ser exibida a mensagem "Produto cadastrado com sucesso"

#Caminho inválido

Esquema do Cenário: CT02 - Não selecionar instituição financeira
Quando seleciono o fundo <fundo> 
E clico para selecionar o fundo na lista exibida
E preencho o valor aplicado <valor> maior que zero
E preencho a data de inicio com uma entrada válida <data_valida>
Então deve ser exibida a mensagem "Selecione uma instituição financeira" sob o campo instituição financeira

Esquema do Cenário: CT03 - Não selecionar um fundo
Quando seleciono uma instituicao financeira <instituicao>
E preencho o valor aplicado <valor> maior que zero
E preencho a data de inicio com uma entrada válida <data_valida>
Então deve ser exibida a mensagem "Selecione um fundo" sob o campo fundo

Esquema do Cenário: CT04 - Não preencher o valor
Quando seleciono uma instituicao financeira <instituicao>
E seleciono o fundo <fundo>
E preencho a data de inicio com uma entrada válida <data_valida>
Então deve ser exibida a mensagem "Informe o valor aplicado" sob o campo valor aplicado

Esquema do Cenário: CT05 - Preencher o valor aplicado com zero
Quando seleciono uma instituicao financeira <instituicao>
E seleciono o fundo <fundo>
E preencho o valor aplicado com zero
E preencho a data de inicio com uma entrada válida <data_valida>
Então deve ser exibida a mensagem "Falha ao processar a solicitação"

Esquema do Cenário: CT05 - Não preencher a data de início
Quando preencho a busca por instituição financeira inserindo o nome de uma instituição existiente <instituicao> 
E clico para selecionar a instituição na lista exibida
E preencho a busca por fundo inserindo o nome de um fundo existente <fundo> 
E clico para selecionar o fundo na lista exibida
E preencho o valor aplicado <valor> maior que zero
Então deve ser exibida a mensagem "Informe a data de início" sob o campo data de inicio

Esquema do Cenário: CT06 - Preencher a data de início com valor inválido
Quando seleciono uma instituicao financeira <instituicao>
E seleciono o fundo <fundo>
E preencho o valor aplicado <valor> maior que zero
E preencho a data de inicio com uma entrada inválida <data_invalida>
Então deve ser exibida a mensagem "Informe uma data válida" sob o campo data de inicio


Exemplos:
|instituicao        |fundo                                              |valor   |data_valida    | data_invalida    |
|BANCO INTER        |REAL FUNDO DE INVESTIMENTO CURTO PRAZO DAILY A     |111     |02/02/2020     | 20/20/2020       |
|BANCO DO BRASIL    |CUSTOMER FUNDO DE INVESTIMENTO RENDA FIXA          |3       |30/12/2018     | 36/10/2017       |

