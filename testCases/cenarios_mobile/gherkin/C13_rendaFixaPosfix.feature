#language: pt

Funcionalidade: cadastrar renda fixa pós-fixada
Como cliente Kinvo quero cadastrar uma aplicação em renda fixa pós-fixada 
na minha carteira usando a plataforma mobile

Esquema do Cenário: CT01 - O usuário não escolhe uma instituição financeira
Dado que eu esteja logado no aplicativo da Kinvo na opção de adicionar ativos
Quando selecionar a opção renda fixa pós-fixada
E não selecionar uma instituição financeira 
Então o botão “Avançar” deve permanecer inativo

Esquema do Cenário: CT02 - O usuário escolhe uma instituição financeira e clica em “Avançar”
Dado que eu esteja logado no aplicativo da Kinvo na opção de adicionar ativos
Quando selecionar a opção renda fixa pós-fixada
E escolher uma instituição financeira <instituição>
E clicar em “Avançar”
Então a tela “Escolha o emissor” deve ser exibida

#Tela “Escolha o emissor”

Esquema do Cenário: CT03 - O usuário não escolhe um emissor
Dado que eu esteja na tela “Escolha o emissor”
Quando não selecionar um emissor
Então o botão “Avançar” deve permanecer inativo

Esquema do Cenário: CT04 - O usuário escolhe um emissor e clica em “Avançar”
Dado que eu esteja na tela “Escolha o emissor”
Quando selecionar um emissor <emissor>
E clicar em “Avançar”
Então a tela “Escolha o ativo” deve ser exibida

#Tela “Escolha o ativo”

Esquema do Cenário: CT05 - O usuário não seleciona o ativo
Dado que eu esteja na tela “Escolha o ativo”
Quando não selecionar um ativo
Então o botão “Avançar” deve permanecer inativo

Esquema do Cenário: CT06- O usuário seleciona o ativo e clica em “Avançar”
Dado que eu esteja na tela “Escolha o ativo”
Quando selecionar um ativo <ativo>
E clicar em “Avançar”
Então a tela “Período e investimento” deve ser exibida

#Tela “Período e investimento”

Esquema do Cenário: CT07 - O usuário não preenche a data de início e clica em “Avançar”
Dado que eu esteja na tela “Período e investimento”
Quando preencher o valor aplicado <valor> maior que zero”
E a data de vencimento em formato válido <data_valida>
E a descrição <descrição>
E clicar em “Avançar”
Então a mensagem “Esse campo é requerido” deve ser exibida sob o campo de data de início

Esquema do Cenário: CT08 - O usuário não preenche o valor aplicado e clica em “Avançar”
Dado que eu esteja na tela “Período e investimento”
Quando preencher a data de início em formato válido <data_valida>
E a data de vencimento em formato válido <data_valida>
E a descrição <descrição>
E clicar em “Avançar”
Então a mensagem “Esse campo é requerido” deve ser exibida sob o campo de valor aplicado

Esquema do Cenário: CT09 - O usuário não preenche a data de vencimento e clica em “Avançar”
Dado que eu esteja na tela “Período e investimento”
Quando preencher a data de início em formato válido <data_valida>
E o valor aplicado <valor> maior que zero”
E a descrição <descrição>
E clicar em “Avançar”
Então a mensagem “Esse campo é requerido” deve ser exibida sob o campo de data de vencimento

Esquema do Cenário: CT10 - O usuário não preenche a descrição e clica em “Avançar”
Dado que eu esteja na tela “Período e investimento”
Quando preencher a data de início em formato válido <data_valida>
E o valor aplicado <valor> maior que zero”
E a data de vencimento em formato válido <data_valida>
E clicar em “Avançar”
Então a tela “Escolha um indexador” deve ser exibida

Esquema do Cenário: CT11 - O usuário preenche a data de início com valor inválido 
Dado que eu esteja na tela “Período e investimento”
Quando preencher a data de início em formato inválido <data_invalida>
Então a mensagem “Informe uma data válida” deve ser exibida sob o campo de data de início

Esquema do Cenário: CT12 - O usuário preenche o valor aplicado com zero 
Dado que eu esteja na tela “Período e investimento”
Quando preencher o valor aplicado com zero
Então a mensagem “Por favor informe um valor maior que 0,00” deve ser exibida sob o campo de valor aplicado

Esquema do Cenário: CT13 - O usuário preenche a data de vencimento com valor inválido 
Dado que eu esteja na tela “Período e investimento”
Quando preencher a data de vencimento em formato inválido <data_invalida>
Então a mensagem “Informe uma data válida” deve ser exibida sob o campo de data de vencimento

Esquema do Cenário: CT14 - O usuário preenche as datas em formato válido,o valor aplicado maior que zero, a descrição e clica em “Avançar”
Dado que eu esteja na tela “Período e investimento”
Quando preencher a data de início em formato válido <data_valida>
E o valor aplicado <valor> maior que zero”
E a data de vencimento em formato válido <data_valida>
E a descrição <descrição>
E clicar em “Avançar”
Então a tela “Escolha um indexador” deve ser exibida

#Tela “Escolha um indexador”

Esquema do Cenário: CT15 - O usuário não escolhe um indexador
Dado que eu esteja na tela “Escolha o emissor”
Quando não selecionar um indexador
Então o botão “Avançar” deve permanecer inativo

Esquema do Cenário: CT16 - O usuário escolhe um indexador 
Dado que eu esteja na tela “Escolha o emissor”
Quando selecionar um indexador <indexador>
Então o campo de % do indexador deve aparecer

Esquema do Cenário: CT17 - O usuário não preenche o % do indexador e clica em “Avançar”
Dado que selecione um indexador
Quando eu clicar em “Avançar”
Então a mensagem “Esse campo é requerido” deve ser exibida sob o campo de % do indexador

Esquema do Cenário: CT18 - O usuário preenche o % do indexador com 0
Dado que selecione um indexador
Quando preencher o % do indexador com 0
E clicar em “Avançar”
Então a mensagem “Por favor informe um valor maior que 0” deve ser exibida sob o campo de % do indexador

Esquema do Cenário: CT19 - O usuário preenche o % do indexador com valor maior que 0 e clica em “Avançar”
Dado que selecione um indexador
Quando preencher o % do indexador maior que zero <%indexador>
E clicar em “Avançar”
Então a tela “Finalizar a adição do ativo” deve ser exibida

#Tela “Finalizar a adição do ativo”

Esquema do Cenário: CT20 - O usuário clica em “Finalizar”
Dado que esteja na tela “Finalizar a adição do ativo”
Quando clicar em “Finalizar”
Então será exibida a mensagem “Adicionado com Sucesso” e as opções “Adicionar um novo ativo”, “Adicionar uma nova renda fixa pós-fixada” e o botão de fechar.


Exemplos:
|instituição    |emissor        |indexador  |%indexador |ativo      |data_valida    |data_invalida    |valor    |taxa   |descricao              |
|BANCO INTER    |BANCO INTER    |CDI        |1%         |CDB PRÉ    |02/02/2020     |20/20/2020       |R$10,00  |1%     |exemplo de descricao   |
|NUBANK         |NUBANK         |IPCA       |20%        |LCI PRÉ    |30/12/2018     |36/10/2017       |R$40,00  |15%    |lorem ipsum            |