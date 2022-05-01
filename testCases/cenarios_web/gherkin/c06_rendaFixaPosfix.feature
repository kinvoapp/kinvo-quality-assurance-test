#language: pt

Funcionalidade: cadastrar Renda Fixa Pós-Fixada
Como cliente Kinvo quero cadastrar uma renda fixa pós-fixada na minha carteira usando a plataforma web

Contexto: 
Dado que eu esteja logado no sistema dentro do painel de controle
E acesse o menu de adicionar produtos
E clique na opção Renda Fixa Pós-Fixada

#Caminho feliz

Esquema do Cenário: CT01 - Preencher corretamente todos os campos
Quando seleciono uma instituicao financeira <instituicao>
E seleciono uma institução emissora <emissor>
E seleciono um papel <papel>
E seleciono um indexador <indexador>
E preencho o % do indexador <valor%>
E preencho a data de inicio com uma entrada válida <data_valida>
E preencho a data de vencimento com uma entrada válida <data_valida>
E preencho o valor aplicado <valor>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Produto cadastrado com sucesso"

#Caminho Inválido

Esquema do Cenário: CT02 - Não selecionar a instituição financeira
Quando seleciono uma institução emissora <emissor>
E seleciono um papel <papel>
E seleciono um indexador <indexador>
E preencho o % do indexador <valor%>
E preencho a data de inicio com uma entrada válida <data_valida>
E preencho a data de vencimento com uma entrada válida <data_valida>
E preencho o valor aplicado <valor>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Selecione uma instituição financeira" sob o campo instituição financeira

Esquema do Cenário: CT03 - Não selecionar um emissor
Quando seleciono uma instituicao financeira <instituicao>
E seleciono um papel <papel>
E seleciono um indexador <indexador>
E preencho o % do indexador <valor%>
E preencho a data de inicio com uma entrada válida <data_valida>
E preencho a data de vencimento com uma entrada válida <data_valida>
E preencho o valor aplicado <valor>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Selecione um emissor" sob o campo emissor

Esquema do Cenário: CT04 - Não selecionar um papel
Quando seleciono uma instituicao financeira <instituicao>
E seleciono uma institução emissora <emissor>
E seleciono um indexador <indexador>
E preencho o % indexador <valor%>
E preencho a data de inicio com uma entrada válida <data_valida>
E preencho a data de vencimento com uma entrada válida <data_valida>
E preencho o valor aplicado <valor>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Selecione um papel" sob o campo papel

Esquema do Cenário: CT05 - Não selecionar um indexador
Quando seleciono uma instituicao financeira <instituicao>
E seleciono uma institução emissora <emissor>
E seleciono um papel <papel>
E preencho o % do indexador <valor%>
E preencho a data de inicio com uma entrada válida <data_valida>
E preencho a data de vencimento com uma entrada válida <data_valida>
E preencho o valor aplicado <valor>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Selecione um papel" sob o campo indexador

Esquema do Cenário: CT06 - Não preencher o % do indexador
Quando seleciono uma instituicao financeira <instituicao>
E seleciono uma institução emissora <emissor>
E seleciono um papel <papel>
E seleciono um indexador <indexador>
E preencho a data de inicio com uma entrada válida <data_valida>
E preencho a data de vencimento com uma entrada válida <data_valida>
E preencho o valor aplicado <valor>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Informe o % do indexador" sob o campo indexador

Esquema do Cenário: CT07 - Preencher o % do indexador com zero
Quando seleciono uma instituicao financeira <instituicao>
E seleciono uma institução emissora <emissor>
E seleciono um papel <papel>
E seleciono um indexador <indexador>
E preencho o % do indexador com zero
E preencho a data de inicio com uma entrada válida <data_valida>
E preencho a data de vencimento com uma entrada válida <data_valida>
E preencho o valor aplicado <valor>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Informe o % do indexador" sob o campo indexador

Esquema do Cenário: CT08 - Preencher o % do indexador mais de 6 dígitos
Quando seleciono uma instituicao financeira <instituicao>
E seleciono uma institução emissora <emissor>
E seleciono um papel <papel>
E seleciono um indexador <indexador>
E preencho o % do indexador <valor%_invalido>
E preencho a data de inicio com uma entrada válida <data_valida>
E preencho a data de vencimento com uma entrada válida <data_valida>
E preencho o valor aplicado <valor>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Informe o % do indexador" sob o campo indexador

Esquema do Cenário: CT09 - Não preencher a data de início
Quando seleciono uma instituicao financeira <instituicao>
E seleciono uma institução emissora <emissor>
E seleciono um papel <papel>
E seleciono um indexador <indexador>
E preencho o % do indexador <valor%>
E preencho a data de vencimento com uma entrada válida <data_valida>
E preencho o valor aplicado <valor>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Informe a data de início" sob o campo data de início

Esquema do Cenário: CT10 - Preencher a data de início com uma entrada inválida
Quando seleciono uma instituicao financeira <instituicao>
E seleciono uma institução emissora <emissor>
E seleciono um papel <papel>
E seleciono um indexador <indexador>
E preencho o % do indexador <valor%>
E preencho a data de inicio com uma entrada inválida <data_invalida>
E preencho a data de vencimento com uma entrada válida <data_valida>
E preencho o valor aplicado <valor>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Informe uma data válida" sob o campo data de início

Esquema do Cenário: CT11 - Não preencher a data de vencimento
Quando seleciono uma instituicao financeira <instituicao>
E seleciono uma institução emissora <emissor>
E seleciono um papel <papel>
E seleciono um indexador <indexador>
E preencho o % do indexador <valor%>
E preencho a data de inicio com uma entrada válida <data_valida>
E preencho o valor aplicado <valor>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Informe a data de vencimento" sob o campo data de vencimento

Esquema do Cenário: CT12 - Preencher a data de vencimento com uma entrada inválida
Quando seleciono uma instituicao financeira <instituicao>
E seleciono uma institução emissora <emissor>
E seleciono um papel <papel>
E seleciono um indexador <indexador>
E preencho o % do indexador <valor%>
E preencho a data de inicio com uma entrada válida <data_valida>
E preencho a data de vencimento com uma entrada inválida <data_invalida>
E preencho o valor aplicado <valor>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Informe uma data válida" sob o campo data de vencimento

Esquema do Cenário: CT13 - Não preencher o valor aplicado
Quando seleciono uma instituicao financeira <instituicao>
E seleciono uma institução emissora <emissor>
E seleciono um papel <papel>
E seleciono um indexador <indexador>
E preencho o % do indexador <valor%>
E preencho a data de inicio com uma entrada válida <data_valida>
E preencho a data de vencimento com uma entrada válida <data_valida>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Informe o valor aplicado" sob o campo valor aplicado

Esquema do Cenário: CT14 - Preencher o valor aplicado com zero
Quando seleciono uma instituicao financeira <instituicao>
E seleciono uma institução emissora <emissor>
E seleciono um papel <papel>
E seleciono um indexador <indexador>
E preencho o % do indexador <valor%>
E preencho a data de inicio com uma entrada válida <data_valida>
E preencho a data de vencimento com uma entrada válida <data_valida>
E preencho o valor aplicado como zero
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Quantidade deve ser maior do que zero."


Exemplos:
|instituicao        |emissor      |papel    |indexador |valor%  |valor%_invalido    |valor      |data_valida    | data_invalida    |
|BANCO INTER        |Banco NBC    |LC Pré   |IGP-DI    |0,01    |1000,00            |R$100,00   |02/02/2020     | 20/20/2020       |
|BANCO DO BRASIL    |INTRAG DTVM  |CRA Pré  |IPCA      |999,99  |99999,99           |R$3,00     |30/12/2018     | 36/10/2017       |


