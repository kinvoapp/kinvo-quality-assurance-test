Feature: Cadastro de Ativo Web
Como um usuário do KINVO
O cliente quer cadastrar um ativo
Para que ele possa gerenciar

Scenario: Cadastro Válido
Given que o cliente possua uma conta
When ele está na página principal
And clique no símbolo +
And ele escolhe o tipo no menu lateral
And preenche os dados solicitados
And clique em cadastrar
Then ele será redirecionado para a tela de Produto cadastrado com sucesso.

Scenario: Instituição Inválida
Given que o cliente possua uma conta
When ele está na página principal
And clique no símbolo +
And ele escolhe o tipo no menu lateral
And busque por uma instituição que não existe
Then é informado para ele na tela "NADA ENCONTRADO".

Scenario: Título inválido
Given que o cliente possua uma conta
When ele está na página principal
And clique no símbolo +
And ele escolhe o tipo no menu lateral
And busque um título que não existe
Then é informado para ele na tela de cadastro "no options".

Scenario: Dados sobre o título incompleto
Given que o cliente possua uma conta
When ele está na página principal
And clique no símbolo +
And ele escolhe o tipo no menu lateral
And não preenche os dados solicitados
And clique em cadastrar
Then é informado quais são campos são obrigatórios.












