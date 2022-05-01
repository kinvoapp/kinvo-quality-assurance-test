#language: pt

Funcionalidade: cadastrar Tesouro Direto
Como cliente Kinvo quero cadastrar um tesouro direto na minha carteira usando a plataforma web

Contexto: 
Dado que eu esteja logado no sistema dentro do painel de controle
E acesse o menu de adicionar produtos
E clique na opção Tesouro Direto

#Caminho feliz

Esquema do Cenário: CT01 - Preencher corretamente todos os campos usando a opção "Aplicar por valor"
Quando seleciono uma instituicao financeira <instituicao>
E seleciono o título <titulo> 
E seleciono a opção "Aplicar por Valor"
E preencho o valor aplicado <valor> maior que zero
E preencho a data de inicio com uma entrada válida <data_valida>
Então deve ser exibida a mensagem "Produto cadastrado com sucesso"

Esquema do Cenário: CT02 - Preencher corretamente todos os campos usando a opção "Aplicar por quantidade e preço"
Quando seleciono uma instituicao financeira <instituicao>
E seleciono o título <titulo> 
E seleciono a opção "Aplicar por Quantidade e Preço"
E preencho o a quantidade <quantidade> maior que zero
E o PU do título <valor> maior que zero
E preencho a data de inicio com uma entrada válida <data_valida>
Então deve ser exibida a mensagem "Produto cadastrado com sucesso"

Esquema do Cenário: CT03 - Não selecionar a instituição financeira
Quando seleciono o título <titulo> 
E seleciono a opção "Aplicar por Valor"
E preencho o valor aplicado <valor> maior que zero
E preencho a data de inicio com uma entrada válida <data_valida>
Então deve ser exibida a mensagem "Produto cadastrado com sucesso"

#Caminho inválido

Esquema do Cenário: CT04 - Não selecionar o título
Quando seleciono uma instituicao financeira <instituicao>
E seleciono a opção "Aplicar por Valor"
E preencho o valor aplicado <valor> maior que zero
E preencho a data de inicio com uma entrada válida <data_valida>
Então deve ser exibida a mensagem "Selecione um título" sob o campo a preencher

Esquema do Cenário: CT05 - Não selecionar se a aplicação é por valor ou por quantidade e preço
Quando seleciono uma instituicao financeira <instituicao> 
E clico para selecionar a instituição na lista exibida
E seleciono o título <titulo> 
E preencho a data de inicio com uma entrada válida <data_valida>
Então deve ser exibida a mensagem "Selecione o tipo da aplicação" sob o campo a preencher

Esquema do Cenário: CT06 - Selecionar "Aplicar por valor" e não preencher o valor aplicado
Quando seleciono uma instituicao financeira <instituicao>
E preencho a busca por fundo inserindo o nome de um fundo existente <fundo> 
E clico para selecionar o fundo na lista exibida
E seleciono a opção "Aplicar por Valor"
E preencho a data de inicio com uma entrada válida <data_valida>
Então deve ser exibida a mensagem "informe o valor aplicado" sob o campo a preencher

Esquema do Cenário: CT07 - Selecionar "Aplicar por valor" e preencher o valor aplicado com zero
Quando seleciono uma instituicao financeira <instituicao>
E seleciono o título <titulo> 
E seleciono a opção "Aplicar por Valor"
E preencho o valor aplicado como zero
E preencho a data de inicio com uma entrada válida <data_valida>
Então deve ser exibida a mensagem "Falha ao processar a solicitação"

Esquema do Cenário: CT08 - Selecionar "Aplicar por Quantidade e Preço" e não preencher a quantidade
Quando seleciono uma instituicao financeira <instituicao>
E seleciono o título <titulo> 
E seleciono a opção "Aplicar por Quantidade e Preço"
E o PU do título <valor> maior que zero
E preencho a data de inicio com uma entrada válida <data_valida>
Então deve ser exibida a mensagem "informe a quantidade de títulos comprados" sob o campo a preencher

Esquema do Cenário: CT09 - Selecionar "Aplicar por Quantidade e Preço" e não preencher o valor da cota
Quando seleciono uma instituicao financeira <instituicao>
E seleciono o título <titulo>
E seleciono a opção "Aplicar por Quantidade e Preço"
E preencho o a quantidade <quantidade> maior que zero
E preencho a data de inicio com uma entrada válida <data_valida>
Então deve ser exibida a mensagem "informe o PU do título" sob o campo a preencher

Esquema do Cenário: CT10 - Selecionar "Aplicar por Quantidade e Preço" e preencher a quantidade com zero
Quando seleciono uma instituicao financeira <instituicao>
E seleciono o título <titulo>
E seleciono a opção "Aplicar por Quantidade e Preço"
E preencho o a quantidade com zero
E o PU do título <valor> maior que zero
E preencho a data de inicio com uma entrada válida <data_valida>
Então deve ser exibida a mensagem "Quantidade deve ser maior do que zero."

Esquema do Cenário: CT11 - Selecionar "Aplicar por Quantidade e Preço" e preencher o valor da cota com zero
Quando seleciono uma instituicao financeira <instituicao>
E seleciono o título <titulo>
E seleciono a opção "Aplicar por Quantidade e Preço"
E preencho o a quantidade <quantidade> maior que zero
E o PU do título com zero
E preencho a data de inicio com uma entrada válida <data_valida>
Então deve ser exibida a mensagem "O valor da movimentação deve ser maior que zero"

Esquema do Cenário: CT12 - Não preencher a data de início
Quando seleciono uma instituicao financeira <instituicao>
E seleciono o título <titulo>
E seleciono a opção "Aplicar por Valor"
E preencho o valor aplicado <valor> maior que zero
Então deve ser exibida a mensagem "informe a data de início" sob o campo data de início

Esquema do Cenário: CT13 - Preencher corretamente todos os campos usando a opção "Aplicar por valor"
Quando seleciono uma instituicao financeira <instituicao>
E seleciono o título <titulo>
E seleciono a opção "Aplicar por Valor"
E preencho o valor aplicado <valor> maior que zero
E preencho a data de inicio com uma entrada inválida <data_invalida>
Então deve ser exibida a mensagem "informe uma data válida" sob o campo data de início

Exemplos:
|instituicao        |titulo                         |quantidade |valor     |data_valida    | data_invalida    |
|BANCO INTER        |Tesouro Selic 2027 (LFT)       |1          |R$100,00  |02/02/2020     | 20/20/2020       |
|BANCO DO BRASIL    |Tesouro Prefixado 2024 (LTN)   |25         |R$3,00    |30/12/2018     | 36/10/2017       |


Reportar bug no cadastro de tesouro direto. 
Em Aplicar por valor, valores preenchidos com R$29,88 ou menos 
estão retornando a mensagem "Quantidade deve ser maior do que zero."