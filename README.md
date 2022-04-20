> ![Logo Kinvo](https://github.com/cbfranca/kinvo-front-end-test/blob/master/logo.svg)

# Desafio QA

Seja bem-vindo! Este desafio foi projetado para avaliar a capacidade técnica de candidatos à vagas de Analista de Qualidade voltadas testes de aplicações web e mobile, independente da senioridade. O nível de exigência da avaliação se adequa ao nível da vaga.

## Visão geral

O Kinvo é um produto multiplataforma que coloca você no controle dos seus investimentos! O Kinvo nasceu com a missão de otimizar a tomada de decisão do investidor, a plataforma resolveu algumas dores como a carência de informações detalhadas e dependência das planilhas.

## Desafio
Seu desafio irá ser composto de duas etapas sendo uma delas opcional, caso sua vaga for para QA trainee, junior ou pleno.

A primeira delas tem como objetivo avaliar o planejamento do candidato em casos de testes. Um fluxo específico para cada nível de senioridade será atribuído. 
A segunda etapa tem como objetivo avaliar o candidato na automação dos testes no app kinvo, essa etapa é mandatória apenas para o cargo de nível sênior.


### Primeira etapa
Seu desafio nesta etapa é criar um planejamento de casos de teste que você julgar necessário para ter o fluxo de abertura de conta bem testado. A ideia neste primeiro momento é apenas descrever os cenários de teste.

#### Critérios de avaliação
1. Qualidade dos cenários de testes
2. Organização
3. Cobertura dos cenários
4. Utilizar o formato Gherkin ou semelhante para descrever os casos de teste (opcional)

No segundo momento é necessário que você registre todas as ocorrências encontradas ao executar os cenários de teste

#### Critérios de avaliação
1. Organização
2. Registro de ocorrências

Obs.: É importante ressaltar você deve se atentar a plataforma em que os testes devem ser feitos de acordo com o nível da sua vaga

### Segunda etapa
Seu desafio nesta etapa é desenvolver testes automatizados no app kinvo, a partir dos casos de testes desevolvidos na etapa anterior.

#### Informações sobre essa etapa
1. Utilize o formato Gherkin ou semelhante para a criação dos cenários 
2. Utilize o appium/selenium/cypress ou outro como ferramenta de automação
3. A escolha da linguagem de programação é de livre escolha (Verificar se podemos sugerir python)
4. Você poderá utilizar frameworks, sugerimos a utilização do robot framework (opcional)
5. É necessário registrar um vídeo da automação do teste feito

#### Critérios de avaliação
1. Organização
2. Escrita dos casos de testes
3. Qualidade do código


## Requisitos mínimos:

### ○ Trainee/Estágio

- O fluxo a ser considerado para a criação de casos teste é o de **abertura de contas** no Kinvo na plataforma **web**.

### ○ Junior

- O fluxo a ser considerado para a criação de casos teste é o de **abertura de contas** no Kinvo nas plataformas **web** e **app**.

### ○ Pleno

- O fluxo a ser considerado para a criação de casos teste é o de **cadastro manual de ativos** no Kinvo nas plataformas **web** e **app**.
- Opcionalmente, o candidato pode desenvolver alguns testes automatizados para o fluxo em questão na plataforma **web**

### ○ Sênior/Analista

- O fluxo a ser considerado para a criação de casos teste é o de **cadastro manual de ativos** no Kinvo nas plataformas **web** e **app**.
- O candidato deve desenvolver testes automatizados para o fluxo em questão na plataforma **web**


## Instruções:

1. Faça um fork deste repositório;
2. Anexe o seu conjunto de casos de teste em .pdf dentro da pasta **testCases**
3. Caso seja necessário, anexe os scripts de automação dentro da pasta **scripts**
4. Adicione o link do vídeo de sua automação sendo executada dentro do arquivo `scripts/videoLink.md`
5. Após terminar, submeta um pull request e aguarde a avaliação;

## Notas:

- **! Importante !** O cumprimento dos requisitos solicitados para uma vaga em determinado nível não é garantia de aprovação. Focamos em avaliar a forma como os requisitos foram cumpridos.
- Apesar da listagem de requisitos mínimos acima, caso não tenha tido tempo suficiente ou tenha se esbarrado em alguma dificuldade, entregue o desafio ainda que incompleto e conte-nos na descrição do pull request quais foram as suas maiores dificuldades.
  Não se preocupe, avaliaremos ainda assim! :)
- Lembre-se de fazer um _fork_ deste repositório! Apenas cloná-lo vai te impedir de criar o _pull request_ e dificultar a entrega;

---

Está com alguma dificuldade, encontrou algum problema no desafio ou tem alguma sugestão pra gente? Crie uma [issue](https://github.com/kinvoapp/kinvo-quality-assurance-test/issues) e descreva o que achar necessário.

**Sucesso!**
