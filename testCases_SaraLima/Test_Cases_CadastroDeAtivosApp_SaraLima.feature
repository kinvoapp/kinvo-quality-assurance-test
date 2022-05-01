Feature: Cadastro de Ativo App
Como um usuário do KINVO
O cliente quer cadastrar um ativo
Para que ele possa gerenciar

Scenario: Cadastro Válido
Given que o cliente possua uma conta
When ele clica na aba ativos
And clique no símbolo + Adicionar ativos 
And selecione o tipo de ativo que deseja
And busque pela instituição
And clique em avançar
And preenche os dados solicitados
And clique em avançar
And confirme seus dados
And clique em adicionar
Then ele será redirecionado para a tela de Adicionado com sucesso.

Scenario: Instituição Inválida
Given que o cliente possua uma conta
When ele clique na aba ativos
And selecione o tipo
And busque por uma instituição que não existe
Then é informado para ele na tela "Não encontramos esta instituição".

Scenario: Título inválido
Given que o cliente possua uma conta
When ele clique na aba ativos
And selecione o tipo
And busque pela instituição
And clique em avançar
And busque um título que não existe
Then é informado para ele na tela de cadastro "Não encontramos este título".

Scenario: Dados sobre o título incompleto
Given que o cliente possua uma conta
When ele clique na aba ativos
And selecione o tipo
And busque pela instituição
And clique em avançar
And busque por um título
And clique em avançar
And não preenche os dados necessários
And clica em avançar
Then é informado que os campos são requeridos.












