#language: pt

Funcionalidade: cadastrar Poupança
Como cliente Kinvo quero cadastrar uma poupança na minha carteira usando a plataforma web

Contexto: 
Dado que eu esteja logado no sistema dentro do painel de controle
E acesse o menu de adicionar produtos
E clique na opção Poupança

#Caminho feliz

Esquema do Cenário: CT01 - Preencher todos os campos com valores válidos
Quando seleciono a institução <instituicao>
E preencho o valor aplicado <valor>
E preencho a data de início com uma entrada válida <data_valida>
E clico em cadastrar
Então deve ser exibida a mensagem "Produto cadastrado com sucesso"

#Caminho Inválido

Esquema do Cenário: CT02 - Não preencher a instituição
Quando preencho o valor aplicado <valor>
E preencho a data de início com uma entrada válida <data_valida>
E clico em cadastrar
Então deve ser exibida a mensagem "Precisamos saber em qual instituição financeira a sua poupança está"

Esquema do Cenário: CT03 - Não preencher o valor aplicado
Quando seleciono a institução <instituicao>
E preencho a data de início com uma entrada válida <data_valida>
E clico em cadastrar
Então deve ser exibida a mensagem "informe o valor aplicado" sob o campo valor aplicado

Esquema do Cenário: CT04 - Preencher o valor aplicado como zero
Quando seleciono a institução <instituicao>
E preencho o valor aplicado com zero
E preencho a data de início com uma entrada válida <data_valida>
E clico em cadastrar
Então deve ser exibida a mensagem "O valor da movimentação deve ser maior que zero"

Esquema do Cenário: CT05 - Não preencher a data de início
Quando seleciono a institução <instituicao>
E preencho o valor aplicado <valor>
E clico em cadastrar
Então deve ser exibida a mensagem "informe a data de início" sob o campo data de início

Esquema do Cenário: CT06 - Preencher a data de início com um valor inválido
Quando seleciono a institução <instituicao>
E preencho o valor aplicado <valor>
E preencho a data de início com uma entrada inválida <data_invalida>
E clico em cadastrar
Então deve ser exibida a mensagem "informe a data de início" sob o campo data de início


Exemplos:
|instituicao        |valor      |data_valida    | data_invalida    |
|BANCO INTER        |R$100,00   |02/02/2020     | 20/20/2020       |
|BANCO DO BRASIL    |R$3,00     |30/12/2018     | 36/10/2017       |

