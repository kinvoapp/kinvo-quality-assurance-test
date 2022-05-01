#language: pt

Funcionalidade: cadastrar Debêntures
Como cliente Kinvo quero cadastrar uma debênture na minha carteira usando a plataforma web

Contexto: 
Dado que eu esteja logado no sistema dentro do painel de controle
E acesse o menu de adicionar produtos
E clique na opção Debêntures 

#Caminho feliz

Esquema do Cenário: CT01 - Preencher todos os campos com valores válidos pelo método valor
Quando seleciono a institução <instituicao>
E insiro o nome do título <titulo>
E seleciono aplicar por valor
E preencho o valor aplicado <valor>
E preencho a data de início com uma entrada válida <data_valida>
E clico em cadastrar
Então deve ser exibida a mensagem "Produto cadastrado com sucesso"

Esquema do Cenário: CT02 - Preencher todos os campos com valores válidos pelo quantidade e preço
Quando seleciono a institução <instituicao>
E insiro o nome do título <titulo>
E seleciono aplicar por quantidade e preço
E preencho a quantidade <quantidade>
E preencho a PU do título <valor>
E preencho a data de início com uma entrada válida <data_valida>
E clico em cadastrar
Então deve ser exibida a mensagem "Produto cadastrado com sucesso"

#Caminho Inválido

Esquema do Cenário: CT03 - Não preencher a instituição financeira
Quando insiro o nome do título <titulo>
E seleciono aplicar por valor
E preencho o valor aplicado <valor>
E preencho a data de início com uma entrada válida <data_valida>
E clico em cadastrar
Então deve ser exibida a mensagem "Produto cadastrado com sucesso"

Esquema do Cenário: CT04 - Não preencher o título da debênture
Quando seleciono a institução <instituicao>
E seleciono aplicar por valor
E preencho o valor aplicado <valor>
E preencho a data de início com uma entrada válida <data_valida>
E clico em cadastrar
Então deve ser exibida a mensagem "Selecione um debênture" no campo Debênture

Esquema do Cenário: CT05 - Não selecionar o tipo da aplicação
Quando seleciono a institução <instituicao>
E insiro o nome do título <titulo>
E preencho a data de início com uma entrada válida <data_valida>
E clico em cadastrar
Então deve ser exibida a mensagem "Selecione um tipo de aplicação" no campo Aplicar por

Esquema do Cenário: CT06 - Selecionar o tipo da aplicação por valor e não preencher o valor
Quando seleciono a institução <instituicao>
E insiro o nome do título <titulo>
E seleciono aplicar por valor
E preencho a data de início com uma entrada válida <data_valida>
E clico em cadastrar
Então deve ser exibida a mensagem "Informe o valor aplicado" no campo valor

Esquema do Cenário: CT07 - Selecionar o tipo da aplicação por valor e preencher o valor zero
Quando seleciono a institução <instituicao>
E insiro o nome do título <titulo>
E seleciono aplicar por valor
E preencho o valor aplicado <valor>
E preencho a data de início com uma entrada válida <data_valida>
E clico em cadastrar
Então deve ser exibida a mensagem "Quantidade deve ser maior do que zero"

Esquema do Cenário: CT08 - Selecionar o tipo da aplicação por quantidade e preço e não preencher a quantidade
Quando seleciono a institução <instituicao>
E insiro o nome do título <titulo>
E seleciono aplicar por quantidade e preço
E preencho a PU do título <valor>
E preencho a data de início com uma entrada válida <data_valida>
E clico em cadastrar
Então deve ser exibida a mensagem "Informe a quantidade de títulos comprados" no campo quantidade

Esquema do Cenário: CT09 - Selecionar o tipo da aplicação por quantidade e preço e preencher a quantidade com zero
Quando seleciono a institução <instituicao>
E insiro o nome do título <titulo>
E seleciono aplicar por quantidade e preço
E preencho a quantidade como zero
E preencho a PU do título <valor>
E preencho a data de início com uma entrada válida <data_valida>
E clico em cadastrar
Então deve ser exibida a mensagem "Quantidade deve ser maior do que zero"

Esquema do Cenário: CT10 - Selecionar o tipo da aplicação por quantidade e preço e não preencher a PU do Título
E insiro o nome do título <titulo>
E seleciono aplicar por quantidade e preço
E preencho a quantidade <quantidade>
E preencho a data de início com uma entrada válida <data_valida>
E clico em cadastrar
Então deve ser exibida a mensagem "Informe a quantidade de títulos comprados" no campo PU do título

Esquema do Cenário: CT11 - Selecionar o tipo da aplicação por quantidade e preço e não preencher a PU do Título
E insiro o nome do título <titulo>
E seleciono aplicar por quantidade e preço
E preencho a quantidade <quantidade>
E preencho a PU do título com zero
E preencho a data de início com uma entrada válida <data_valida>
E clico em cadastrar
Então deve ser exibida a mensagem "O valor da movimentação deve ser maior que zero." 

Esquema do Cenário: CT12 - Não preencher a data de início
Quando seleciono a institução <instituicao>
E insiro o nome do título <titulo>
E seleciono aplicar por valor
E preencho o valor aplicado <valor>
E clico em cadastrar
Então deve ser exibida a mensagem "Informe a quantidade de títulos comprados" no campo data

Esquema do Cenário: CT13 - Preencher a data de início com valor inválido
Quando seleciono a institução <instituicao>
E insiro o nome do título <titulo>
E seleciono aplicar por valor
E preencho o valor aplicado <valor>
E preencho a data de início com uma entrada inválida <data_invalida>
E clico em cadastrar
Então deve ser exibida a mensagem "Informe uma data válida" no campo data

Exemplos:
|instituicao        |titulo |quantidade |valor     |data_valida    | data_invalida    |
|BANCO INTER        |SEBS11 |1          |R$100,00  |02/02/2020     | 20/20/2020       |
|BANCO DO BRASIL    |EREN11 |25         |R$3,00    |30/12/2018     | 36/10/2017       |