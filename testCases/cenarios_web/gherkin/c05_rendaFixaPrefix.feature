#language: pt

Funcionalidade: cadastrar Renda Fixa Prefixada 
Como cliente Kinvo quero cadastrar uma renda fixa prefixada na minha carteira usando a plataforma web

Contexto: 
Dado que eu esteja logado no sistema dentro do painel de controle
E acesse o menu de adicionar produtos
E clique na opção Renda Fixa Prefixada

#Caminho feliz

Esquema do Cenário: CT01 - Preencher corretamente todos os campos
Quando seleciono uma instituicao financeira <instituicao>
E seleciono uma institução emissora <emissor>
E seleciono um papel <papel>
E preencho a taxa de juros anual <taxa>
E preencho a data de inicio com uma entrada válida <data_valida>
E preencho a data de vencimento com uma entrada válida <data_valida>
E preencho o valor aplicado <valor>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Produto cadastrado com sucesso"

#Caminho Inválido

Esquema do Cenário: CT02 - Não preencher a instituição financeira
Quando seleciono uma institução emissora <emissor>
E seleciono um papel <papel>
E preencho a taxa de juros anual <taxa>
E preencho a data de inicio com uma entrada válida <data_valida>
E preencho a data de vencimento com uma entrada válida <data_valida>
E preencho o valor aplicado <valor>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Selecione uma instituição financeira" sob o campo instituição financeira

Esquema do Cenário: CT03 - Não preencher a instituição emissora
Quando seleciono uma instituicao financeira <instituicao>
E seleciono um papel <papel>
E preencho a taxa de juros anual <taxa>
E preencho a data de inicio com uma entrada válida <data_valida>
E preencho a data de vencimento com uma entrada válida <data_valida>
E preencho o valor aplicado <valor>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Selecione um emissor" sob o campo emissor

Esquema do Cenário: CT04 - Não selecionar um papel
Quando seleciono uma instituicao financeira <instituicao>
E seleciono uma institução emissora <emissor>
E preencho a taxa de juros anual <taxa>
E preencho a data de inicio com uma entrada válida <data_valida>
E preencho a data de vencimento com uma entrada válida <data_valida>
E preencho o valor aplicado <valor>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Selecione um papel" sob o campo papel

Esquema do Cenário: CT05 - Não preencher a taxa de juros anual
Quando seleciono uma instituicao financeira <instituicao>
E seleciono uma institução emissora <emissor>
E seleciono um papel <papel>
E preencho a data de inicio com uma entrada válida <data_valida>
E preencho a data de vencimento com uma entrada válida <data_valida>
E preencho o valor aplicado <valor>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Informe a taxa de juros anual" sob o campo taxa de juros anual

Esquema do Cenário: CT06 - Preencher a taxa de juros anual como zero
Quando seleciono uma instituicao financeira <instituicao>
E seleciono uma institução emissora <emissor>
E seleciono um papel <papel>
E preencho a taxa de juros anual como zero
E preencho a data de inicio com uma entrada válida <data_valida>
E preencho a data de vencimento com uma entrada válida <data_valida>
E preencho o valor aplicado <valor>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Informe a taxa de juros anual" sob o campo taxa de juros anual

Esquema do Cenário: CT07 - Preencher a taxa de juros anual com valores de mais de 6 caracteres
Quando seleciono uma instituicao financeira <instituicao>
E seleciono uma institução emissora <emissor>
E seleciono um papel <papel>
E preencho a taxa de juros anual <taxa_invalida>
E preencho a data de inicio com uma entrada válida <data_valida>
E preencho a data de vencimento com uma entrada válida <data_valida>
E preencho o valor aplicado <valor>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Informe a taxa de juros anual" sob o campo taxa de juros anual

Esquema do Cenário: CT08 - Não preencher a data de início
Quando seleciono uma instituicao financeira <instituicao>
E seleciono uma institução emissora <emissor>
E seleciono um papel <papel>
E preencho a taxa de juros anual <taxa>
E preencho a data de vencimento com uma entrada válida <data_valida>
E preencho o valor aplicado <valor>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Informe a data de início" sob o campo data de início

Esquema do Cenário: CT09 - Preencher a data de início com um valor inválido
Quando seleciono uma instituicao financeira <instituicao>
E seleciono uma institução emissora <emissor>
E seleciono um papel <papel>
E preencho a taxa de juros anual <taxa>
E preencho a data de inicio com uma entrada inválida <data_invalida>
E preencho a data de vencimento com uma entrada válida <data_valida>
E preencho o valor aplicado <valor>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Informe uma data válida" sob o campo data de início

Esquema do Cenário: CT10 - Não preencher a data de vencimento
Quando seleciono uma instituicao financeira <instituicao>
E seleciono uma institução emissora <emissor>
E seleciono um papel <papel>
E preencho a taxa de juros anual <taxa>
E preencho a data de inicio com uma entrada válida <data_valida>
E preencho o valor aplicado <valor>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Informe a data de vencimento" sob o campo data de vencimento

Esquema do Cenário: CT11 - Preencher a data de vencimento com valor inválido
Quando seleciono uma instituicao financeira <instituicao>
E seleciono uma institução emissora <emissor>
E seleciono um papel <papel>
E preencho a taxa de juros anual <taxa>
E preencho a data de inicio com uma entrada válida <data_valida>
E preencho a data de vencimento com uma entrada inválida <data_invalida>
E preencho o valor aplicado <valor>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Informe uma data válida" sob o campo data de vencimento

Esquema do Cenário: CT12 - Não preencher o valor aplicado
Quando seleciono uma instituicao financeira <instituicao>
E seleciono uma institução emissora <emissor>
E seleciono um papel <papel>
E preencho a taxa de juros anual <taxa>
E preencho a data de inicio com uma entrada válida <data_valida>
E preencho a data de vencimento com uma entrada válida <data_valida>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Informe o valor aplicado" sob o campo data de vencimento

Esquema do Cenário: CT13 - Preencher o valor aplicado com zero
Quando seleciono uma instituicao financeira <instituicao>
E seleciono uma institução emissora <emissor>
E seleciono um papel <papel>
E preencho a taxa de juros anual <taxa>
E preencho a data de inicio com uma entrada válida <data_valida>
E preencho a data de vencimento com uma entrada válida <data_valida>
E preencho o valor aplicado <valor>
E clico no botão "Cadastrar"
Então deve ser exibida a mensagem "Quantidade deve ser maior do que zero."

Exemplos:
|instituicao        |emissor      |papel    |taxa    |taxa_invalida | valor    |data_valida    | data_invalida    |
|BANCO INTER        |Banco NBC    |LC Pré   |0,01    |10000,00      |R$100,00  |02/02/2020     | 20/20/2020       |
|BANCO DO BRASIL    |INTRAG DTVM  |CRA Pré  |9999,99 |9999999,99    |R$3,00    |30/12/2018     | 36/10/2017       |

Reportar bug no cadastro de tesouro direto. 
Em taxa de juros anual, ao preencher a taxa com valores de 6 caracteres é exibida a mensagem 
informando que o valor máximo é de 6 caracteres e a operação fica impedida. Ou o texto deve ser 
modificado para "TAMANHO MÁXIMO É DE 5 CARACTERES" ou a aplicação deve permitir que se utilize valores
de até 6 caracteres.