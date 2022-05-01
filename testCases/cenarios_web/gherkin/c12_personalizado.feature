#language: pt

Funcionalidade: cadastrar Produto Personalizado
Como cliente Kinvo quero cadastrar um produto personalizado na minha carteira usando a plataforma web

Contexto: 
Dado que eu esteja logado no sistema dentro do painel de controle
E acesse o menu de adicionar produtos
E clique na opção Produto Personalizado

#Caminho Feliz

Esquema do Cenário: CT01 - Preencher corretamente todos os campos com valores válidos não cadastrando a cotação
Quando seleciono a institução financeira <instituicao>
E preencho o nome <nome> do produto
E informo o seu preço unitário <valor> maior que zero
E preencho uma data de início em formato válido <data_valida>
E seleciono a metodologia de precificação <metodologia>
E insiro uma quantidade <quantidade>
E seleciono "não" para cadastrar a cotação do produto
Então deve ser exibida a mensagem "Produto cadastrado com sucesso"

Esquema do Cenário: CT02 - Preencher corretamente todos os campos com valores válidos cadastrando a cotação
Quando seleciono a institução financeira <instituicao>
E preencho o nome <nome> do produto
E informo o seu preço unitário <valor> maior que zero
E preencho uma data de início em formato válido <data_valida>
E seleciono a metodologia de precificação <metodologia>
E insiro uma quantidade <quantidade>
E seleciono "sim" para cadastrar a cotação do produto
E preencho o preço <valor> maior que zero
E preencho uma data inicial da cotação em formato válido <data_valida>
Então deve ser exibida a mensagem "Produto cadastrado com sucesso"

Esquema do Cenário: CT03 - Não preencher a instituição financeira
Quando preencho o nome <nome> do produto
E informo o seu preço unitário <valor>
E preencho uma data de início em formato válido <data_valida>
E seleciono a metodologia de precificação <metodologia>
E insiro uma quantidade <quantidade>
E seleciono "não" para cadastrar a cotação do produto
Então deve ser exibida a mensagem "Produto cadastrado com sucesso"

Esquema do Cenário: CT13 - Optar por cadastrar a cotação do produto e preencher o campo preço com zero
Quando seleciono a institução financeira <instituicao>
E preencho o nome <nome> do produto
E informo o seu preço unitário <valor> maior que zero
E preencho uma data de início em formato válido <data_valida>
E seleciono a metodologia de precificação <metodologia>
E insiro uma quantidade <quantidade>
E seleciono "sim" para cadastrar a cotação do produto
E preencho o preço como zero
E preencho uma data inicial da cotação em formato válido <data_valida>
Então deve ser exibida a mensagem "Produto cadastrado com sucesso"

#Caminho Inválido

Esquema do Cenário: CT04 - Não preencher o nome do produto
Quando seleciono a institução financeira <instituicao>
E informo o seu preço unitário <valor>
E preencho uma data de início em formato válido <data_valida>
E seleciono a metodologia de precificação <metodologia>
E insiro uma quantidade <quantidade>
E seleciono "não" para cadastrar a cotação do produto
Então deve ser exibida a mensagem "informe o nome" sob o campo nome do produto

Esquema do Cenário: CT05 - Não informar o valor unitário do produto
Quando seleciono a institução financeira <instituicao>
E preencho o nome <nome> do produto
E preencho uma data de início em formato válido <data_valida>
E seleciono a metodologia de precificação <metodologia>
E insiro uma quantidade <quantidade>
E seleciono "não" para cadastrar a cotação do produto
Então deve ser exibida a mensagem "informe o preço unitário" sob o campo preço unitário

Esquema do Cenário: CT06 - Informar o valor unitário do produto como zero
Quando seleciono a institução financeira <instituicao>
E preencho o nome <nome> do produto
E informo o seu preço unitário como zero
E preencho uma data de início em formato válido <data_valida>
E seleciono a metodologia de precificação <metodologia>
E insiro uma quantidade <quantidade>
E seleciono "não" para cadastrar a cotação do produto
Então deve ser exibida a mensagem "Quantidade deve ser maior do que zero."

Esquema do Cenário: CT07 - Não preencher a data de início
Quando seleciono a institução financeira <instituicao>
E preencho o nome <nome> do produto
E informo o seu preço unitário <valor>
E seleciono a metodologia de precificação <metodologia>
E insiro uma quantidade <quantidade>
E seleciono "não" para cadastrar a cotação do produto
Então deve ser exibida a mensagem "informe a data de início" sob o campo data de inicio

Esquema do Cenário: CT08 - Preencher a data de início com valor inválido
Quando seleciono a institução financeira <instituicao>
E preencho o nome <nome> do produto
E informo o seu preço unitário <valor>
E preencho uma data de início em formato inválido <data_invalida>
E seleciono a metodologia de precificação <metodologia>
E insiro uma quantidade <quantidade>
E seleciono "não" para cadastrar a cotação do produto
Então deve ser exibida a mensagem "Informe uma data válida" sob o campo data de início

Esquema do Cenário: CT09 - Ignorar a metodologia de precificação
Quando seleciono a institução financeira <instituicao>
E preencho o nome <nome> do produto
E informo o seu preço unitário <valor>
E preencho uma data de início em formato válido <data_valida>
E insiro uma quantidade <quantidade>
E seleciono "não" para cadastrar a cotação do produto
Então deve ser exibida a mensagem "Produto cadastrado com sucesso"

Esquema do Cenário: CT10 - Não registrar a quantidade de produtos
Quando seleciono a institução financeira <instituicao>
E preencho o nome <nome> do produto
E informo o seu preço unitário <valor>
E preencho uma data de início em formato válido <data_valida>
E seleciono a metodologia de precificação <metodologia>
E seleciono "não" para cadastrar a cotação do produto
Então deve ser exibida a mensagem "informe a quantidade" sob o campo quantidade

Esquema do Cenário: CT11 - Registrar a quantidade de produtos como zero
Quando seleciono a institução financeira <instituicao>
E preencho o nome <nome> do produto
E informo o seu preço unitário <valor>
E preencho uma data de início em formato válido <data_valida>
E seleciono a metodologia de precificação <metodologia>
E insiro uma quantidade como zero
E seleciono "não" para cadastrar a cotação do produto
Então deve ser exibida a mensagem "Quantidade deve ser maior do que zero."

Esquema do Cenário: CT12 - Optar por cadastrar a cotação do produto e não preencher o campo preço
Quando seleciono a institução financeira <instituicao>
E preencho o nome <nome> do produto
E informo o seu preço unitário <valor>
E preencho uma data de início em formato válido <data_valida>
E seleciono a metodologia de precificação <metodologia>
E insiro uma quantidade <quantidade>
E seleciono "sim" para cadastrar a cotação do produto
E E preencho uma data inicial da cotação em formato válido <data_valida>
Então deve ser exibida a mensagem "informe um valor" sob o campo Preço

Esquema do Cenário: CT14 - Optar por cadastrar a cotação do produto e não preencher o campo de data inicial da cotação
Quando seleciono a institução financeira <instituicao>
E preencho o nome <nome> do produto
E informo o seu preço unitário <valor> maior que zero
E preencho uma data de início em formato válido <data_valida>
E seleciono a metodologia de precificação <metodologia>
E insiro uma quantidade <quantidade>
E seleciono "sim" para cadastrar a cotação do produto
E preencho o preço <valor> maior que zero
Então deve ser exibida a mensagem "informe a data inicial da cotação" sob o campo data inicial da cotação

Esquema do Cenário: CT15 - Optar por cadastrar a cotação do produto e preencher o campo de data inicial da cotação com formato inválido
Quando seleciono a institução financeira <instituicao>
E preencho o nome <nome> do produto
E informo o seu preço unitário <valor> maior que zero
E preencho uma data de início em formato válido <data_valida>
E seleciono a metodologia de precificação <metodologia>
E insiro uma quantidade <quantidade>
E seleciono "sim" para cadastrar a cotação do produto
E preencho o preço <valor> maior que zero
E preencho uma data inicial da cotação em formato inválido <data_invalida>
Então deve ser exibida a mensagem "Informe uma data válida" sob o campo data de início

Exemplos:
|instituicao     |nome    |quantidade  |valor   |data_valida    | data_invalida    |
|BANCO INTER     |prod    |1223        |R$100,00  |02/02/2020     | 20/20/2020       |
|BANCO DO BRASIL |persona |1           |R$3,00    |30/12/2018     | 36/10/2017       |