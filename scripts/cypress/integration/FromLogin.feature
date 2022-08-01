
Feature: cadastro via Kinvo web

    Teste de cadastro kinvo via web

#Caminhos Felizes
Scenario: cadastro completo e com todos aceites confirmados
Given que o usuário esteja na página criação de conta da Kinvo
When informar todos os dados de forma válida
And confirmar todos os requisitos necessários
Then será direcionado para página de cadastro realizado

#Caminhos Infelizes
Scenario: cadastro com nome com menos de dois caracteres
Given que o usuário esteja na página criação de conta da Kinvo
When informar um nome com menos de dois caracteres
Then será exibido mensagem de formato inválido para nome

Scenario: cadastro com sobrenome com menos de dois caracteres
Given que o usuário esteja na página criação de conta da Kinvo
When informar um sobrenome com menos de dois caracteres
Then será exibido mensagem de formato inválido para sobrenome

Scenario: cadastro com nome contendo caracteres especiais ou números
Given que o usuário esteja na página criação de conta da Kinvo
When informar um nome contendo caracteres especiais ou número
Then será exibido mensagem de formato inválido para nome

Scenario: cadastro com sobrenome com caracteres especiais
Given que o usuário esteja na página criação de conta da Kinvo
When informar um nome contendo caracteres especiais ou número
Then será exibido mensagem de formato inválido para sobrenome

Scenario: cadastro sem nome
Given que o usuário esteja na página criação de conta da Kinvo
When não informar o nome
Then será exibido uma mensagem de obrigatoriedade do fornecimento do nome

Scenario: cadastro sem sobrenome
Given que o usuário esteja na página criação de conta da Kinvo
When não informar o sobrenome
Then será exibido uma mensagem de obrigatoriedade do fornecimento do sobrenome

Scenario: cadastro sem e-mail
Given que o usuário esteja na página criação de conta da Kinvo
When não informa o e-mail
Then será exibido uma mensagem de obrigatoriedade do fornecimento do
e-mail

Scenario: cadastro com e-mail com formato inválido
Given que o usuário esteja na página criação de conta da Kinvo
When informar email com formato inválido
Then será exibido a mensagem de e-mail invalido

Scenario: cadastro com senha sem letra maiúscula
Given que o usuário esteja na página criação de conta da Kinvo
When informar senha com ausência de letra maiúscula
Then será exibido a lista de requisito para a senha com o elemento em
destaque do não cumprimento referente a exigência de letras maiúsculas

Scenario: cadastro com senha sem letra minúscula
Given que o usuário esteja na página criação de conta da Kinvo
When informar senha com ausência de letra minúscula
Then será exibido a lista de requisito para a senha com o elemento em
destaque do não cumprimento referente a exigência de letras minúsculas

Scenario: cadastro com senha sem caractere especial
Given que o usuário esteja na página criação de conta da Kinvo
When informar senha com ausência de caractere especial
Then será exibido a lista de requisito para a senha com o elemento em
destaque do não cumprimento referente a exigência de caracteres especiais

Scenario: cadastro com senha sem numero
Given que o usuário esteja na página criação de conta da Kinvo
When informar senha com ausência de número
Then será exibido a lista de requisito para a senha com o elemento em
destaque do não cumprimento referente a exigência de números

Scenario: cadastro com senha com menos de 8 caracteres
Given que o usuário esteja na página criação de conta da Kinvo
When informar senha com menos de 8 caracteres
Then será exibido a lista de requisito para a senha com o elemento em
destaque do não cumprimento referente a exigência mínima de 8 caracteres

Scenario: cadastro sem confirmação das políticas de privacidade
Given que o usuário esteja na página criação de conta da Kinvo
When informar todos os dados de forma válida
And dar aceite nos termos de uso
And não dar aceite na política de privacidade
Then botão de criação de conta desabilitado

Scenario: cadastro sem confirmação dos termos de uso
Given que o usuário esteja na página criação de conta da Kinvo
When informar todos os dados de forma válida
And dar aceite nas políticas de privacidade
And não dar aceite nos termos de uso
Then botão de criação de conta desabilitado

Scenario: cadastro sem confirmação captcha
Given que o usuário esteja na página criação de conta da Kinvo
When informar todos os dados de forma válida
And dar aceite nos termos de uso
And dar aceite na política de privacidade
And não marcar o reCaptcha
Then botão de criação de conta desabilitado