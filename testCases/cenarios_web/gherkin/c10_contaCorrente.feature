#language: pt

Funcionalidade: cadastrar COnta Corrente
Como cliente Kinvo quero cadastrar uma conta corrente na minha carteira usando a plataforma web

Contexto: 
Dado que eu esteja logado no sistema dentro do painel de controle
E acesse o menu de adicionar produtos
E clique na opção Conta Corrente

#Caminho Feliz

Esquema do Cenário: CT01 - Preencher todos os campos com valores válidos
Quando seleciono a institução <instituicao>
E preencho valor aplicado <valor>
E preencho uma data de início válida <data_valida>
E seleciono sim para rentável
E clico em cadastrar
Então deve ser exibida a mensagem "Produto cadastrado com sucesso"

Esquema do Cenário: CT07 - Ignora o campo rentável 
Quando seleciono a institução <instituicao>
E preencho valor aplicado <valor>
E preencho uma data de início válida <data_valida>
E não altero o status de rentável 
E clico em cadastrar
Então deve ser exibida a mensagem "Produto cadastrado com sucesso"

#Caminho Inválido

Esquema do Cenário: CT02 - Não preencher a instituição financeira
Quando preencho valor aplicado <valor>
E preencho uma data de início válida <data_valida>
E seleciono sim para rentável
E clico em cadastrar
Então deve ser exibida a mensagem "Selecione uma instituição financeira" sob o campo instituição financeira

Esquema do Cenário: CT03 - Não preencher o valor aplicado
Quando seleciono a institução <instituicao>
E preencho uma data de início válida <data_valida>
E seleciono sim para rentável
E clico em cadastrar
Então deve ser exibida a mensagem "Informe um valor aplicado" sob o campo valor aplicado

Esquema do Cenário: CT04 - Preencher o valor aplicado como zero
Quando seleciono a institução <instituicao>
E preencho valor aplicado como zero
E preencho uma data de início válida <data_valida>
E seleciono sim para rentável
E clico em cadastrar
Então deve ser exibida a mensagem "Quantidade deve ser maior do que zero"

Esquema do Cenário: CT05 - Não preencher a data de início
Quando seleciono a institução <instituicao>
E preencho valor aplicado <valor>
E seleciono sim para rentável
E clico em cadastrar
Então deve ser exibida a mensagem "Informe a data de início" sob o campo data de início

Esquema do Cenário: CT06 - Preencher a data de início inválida
Quando seleciono a institução <instituicao>
E preencho valor aplicado <valor>
E preencho uma data de início inválida <data_invalida>
E seleciono sim para rentável
E clico em cadastrar
Então deve ser exibida a mensagem "Informe uma data válida" sob o campo data de início




Exemplos:
|instituicao        |valor     |data_valida    | data_invalida    |
|BANCO INTER        |R$100,00  |02/02/2020     | 20/20/2020       |
|BANCO DO BRASIL    |R$3,00    |30/12/2018     | 36/10/2017       |