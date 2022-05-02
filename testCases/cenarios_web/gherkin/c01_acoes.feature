#language: pt

Funcionalidade: cadastrar ações/stock, BDR, ADR, FII e Reits
Como cliente Kinvo quero cadastrar ações/stock, BDR, ADR, FII ou Reits 
na minha carteira usando a plataforma web

Contexto: 
Dado que eu esteja logado no sistema dentro do painel de controle
E acesse o menu de adicionar produtos
E clique na opção Ações/Stocks,BDR, ADR, FII e Reits

#Caminho feliz

Esquema do Cenário: CT01 - Preencher todos os campos com valores válidos
Quando seleciono a institução <instituicao>
E preencho as taxas <taxas>
E seleciono um ativo <ativo>
E a quantidade <quantidade_valida> 
E a cotação <cotacao>
E e a data com valores válidos <data_valida>
E clicar no botão Cadastrar
Então deve ser exibida a mensagem "Produto cadastrado com sucesso"

Esquema do Cenário: CT02 - Não preencher instituição e taxas
Quando seleciono um ativo <ativo> 
E preencho a quantidade <quantidade_valida> 
E a cotação <cotacao>
E e a data com valores válidos <data_valida>
E clicar no botão Cadastrar
Então deve ser exibida a mensagem "Produto cadastrado com sucesso"

#Caminho inválido

Esquema do Cenário: CT03 - Não selecionar o ativo
Quando eu seleciono a institução <instituicao>
E preencho as taxas <taxas>
E a quantidade <quantidade_valida>
E a cotação <cotacao>
E e a data com valores válidos <data_valida>
E clicar no botão Cadastrar
Então deve ser exibida a mensagem "Selecione o ativo" sob o campo a preencher

Esquema do Cenário: CT04 - Não preencher a quantidade
Quando eu preencho a institução <instituicao>
E preencho as taxas <taxas>
E seleciono um ativo <ativo>
E a cotação <cotacao>
E e a data com valores válidos <data_valida>
E clicar no botão Cadastrar
Então deve ser exibida a mensagem "informe a quantidade" sob do campo a preencher

Esquema do Cenário: CT05 - Preencher a quantidade igual ou menor que 0
Quando seleciono a institução <instituicao>
E preencho as taxas <taxas>
E seleciono um ativo <ativo>
E a quantidade <menor_que_um>
E a cotação <cotacao>
E e a data com valores válidos <data_valida>
E clicar no botão Cadastrar
Então deve ser exibida a mensagem "Quantidade deve ser maior do que zero."

Esquema do Cenário: CT06 - Não preencher a cotação
Quando seleciono a institução <instituicao>
E preencho as taxas <taxas>
E seleciono um ativo <ativo>
E a quantidade <quantidade>
E e a data com valores válidos <data_valida>
E clicar no botão Cadastrar
Então deve ser exibida a mensagem "informe a cotação" sob do campo a preencher

Esquema do Cenário: CT07 - Preencher a cotação igual a zero
Quando seleciono a institução <instituicao>
E preencho as taxas <taxas>
E seleciono um ativo <ativo>
E a quantidade <quantidade> maior que 0
E a cotação como zero
E e a data com valores válidos <data_valida>
E clicar no botão Cadastrar
Então deve ser exibida a mensagem "O valor da movimentação deve ser maior que zero"

Esquema do Cenário: CT08 - Não preencher a data de início
Quando seleciono a institução <instituicao>
E as taxas <taxas>
E seleciono um ativo <ativo>
E a quantidade <quantidade> maior que 0
E a cotação <cotacao>
E clicar no botão Cadastrar
Então deve ser exibida a mensagem "informe a data da aplicaçâo" sob do campo a preencher

Esquema do Cenário: CT09 - Preencher a data com valores inválidos
Quando seleciono a institução <instituicao>
E preencho as taxas <taxas>
E seleciono um ativo <ativo>
E a quantidade <quantidade> maior que 0
E a cotação <cotacao>
E e a data com valores válidos <data_invalida>
E clicar no botão Cadastrar
Então deve ser exibida a mensagem "informe uma data valida" sob do campo a preencher


Exemplos:
|instituicao        |ativo  |quantidade   |menor_que_um  |data_valida    | data_invalida    |cotacao    |   
|BANCO INTER        |A1AP34 |1            |0             |02/02/2020     | 20/20/2020       |10,00      |
|BANCO DO BRASIL    |CEAB3  |25           |-18           |30/12/2018     | 36/10/2017       |2,00       |
