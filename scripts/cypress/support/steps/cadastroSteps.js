import Auth from '../pages/cadastroPage'
import user from '../../fixtures/user.json'

//Scenario: cadastro completo e com todos aceites confirmados
Given(" que o usuário esteja na página criação de conta da Kinvo",() =>{
    cy.visit('https://app.kinvo.com.br/inscreva-se')
})
When ("informar todos os dados de forma válida",() =>{
    cy.log('Nesse momento vamos preencher os campos de forma valida')
    Auth.cadastroCorreto(name, lastName, email, password)
    Auth.confirmaçãoTermos()
})
And ("confirmar todos os requisitos necessários",() =>{
    Auth.confirmação()
})  
Then ("será direcionado para página de cadastro realizado",() =>{
    
})

//Scenario: cadastro com nome com menos de dois caracteres
Given ("que o usuário esteja na página criação de conta da Kinvo",() =>{
    cy.visit('/')
})
When ("informar de forma invalida o campo nome",() =>{
    cy.log('Nesse momento vamos preencher os campos de forma valida')
    Auth.cadastroIncorreto(name1, lastName, email, password)
    Auth.confirmaçãoTermos()
})
And ("preencher corretamente os requisitos necessários",() =>{
    
})
And ("confirmar todos os requisitos necessários",() =>{
    
}) 
Then ("será direcionado para página de cadastro realizado",() =>{
    
})

//Scenario: cadastro com sobrenome com menos de dois caracteres
Given ("que o usuário esteja na página criação de conta da Kinvo",() =>{
    cy.visit('/')
})
When ("informar todos os dados de forma valida exceto o sobrenome",() =>{
    cy.log('Nesse momento vamos preencher os campos de forma valida')
    Auth.cadastroIncorreto1(name, lastName1, email2, password)    
}) 
And ("confirmar todos os requisitos necessários",() =>{
    Auth.confirmaçãoTermos()
})
And ("confirmar todos os requisitos necessários",() =>{
    Auth.confirmação()
}) 
Then ("será direcionado para página de cadastro realizado",() =>{
    
})
//Caminhos infelizes

//cadastro incompleto e com todos aceites confirmados

//Scenario: cadastro sem nome
Given(" que o usuário esteja na página criação de conta da Kinvo",() =>{
    cy.visit('/')
})
When(" não informar o nome",() =>{
    cy.log('Nesse momento vamos validar a notificação da necessidade do preenchimento do campo nome')
    Auth.cadastroNotName(lastName, email, password)
    Auth.confirmaçãoTermos()
})
Then(" será exibido uma mensagem de obrigatoriedade do fornecimento do nome",() =>{
    
})

//Scenario: cadastro sem sobrenome 
Given(" que o usuário esteja na página criação de conta da Kinvo",() =>{
    cy.visit('/')
})
When(" não informar o sobrenome",() =>{
    cy.log('Nesse momento vamos validar a notificação da necessidade do preenchimento do campo sobrenome')
    Auth.cadastroNotLastName(name, email, password)
    Auth.confirmaçãoTermos()
})
Then(" será exibido uma mensagem de obrigatoriedade do fornecimento do sobrenome",() =>{
    
})

//Scenario: cadastro sem e-mail 
Given(" que o usuário esteja na página criação de conta da Kinvo",() =>{
    cy.visit('/')
})
When(" não informa o e-mail",() =>{
    cy.log('Nesse momento vamos preencher os campos de forma valida')
    Auth.cadastroSemEmail(name, lastName1, password)  
})
Then(" será exibido uma mensagem de obrigatoriedade do fornecimento do e-mail",() =>{
    
})

//Scenario: cadastro com e-mail com formato inválido 
Given(" que o usuário esteja na página criação de conta da Kinvo",() =>{
    cy.visit('/')
})
When("informar email com formato inválido",() =>{
    cy.log('Nesse momento vamos validar a notificação de preenchimento errado no campo email')
    Auth.cadastroEmailIncorreto(name, lastName, email1, password)    
}) 
Then(" será exibido a mensagem de e-mail invalido",() =>{
    
})

//Scenario: cadastro com senha sem letra maiúscula 
Given(" que o usuário esteja na página criação de conta da Kinvo",() =>{
    cy.visit('/')
When(" informar senha com ausência de letra maiúscula",() =>{
    cy.log('Nesse momento vamos validar a notificação de preenchimento errado no campo email')
    Auth.cadastroSemLetraMaiuscula(name, lastName, email1, password2)  
}) 
Then(" será exibido a lista de requisito para a senha com o elemento em destaque do não cumprimento referente a exigência de letras maiúsculas",() =>{
    
})

//Scenario: cadastro com senha sem letra minúscula
Given(" que o usuário esteja na página criação de conta da Kinvo",() =>{
    cy.visit('/')
})
When(" informar senha com ausência de letra minúscula",() =>{
    cy.log('Nesse momento vamos validar a notificação de preenchimento errado no campo email')
    Auth.cadastroSemLetraMaiuscula(name, lastName, email, password4)
    Auth.confirmaçãoTermos()
}) 
Then(" será exibido a lista de requisito para a senha com o elemento em destaque do não cumprimento referente a exigência de letras minúsculas",() =>{
    
}) 

//Scenario: cadastro com senha caractere especial 
Given(" que o usuário esteja na página criação de conta da Kinvo",() =>{
    cy.visit('/')
})
When(" informar senha com ausência de caractere especial",() =>{
    cy.log('Nesse momento vamos validar a notificação de preenchimento errado no campo email')
    Auth.cadastroSenhaSemCaractere(name, lastName, email, password1)
    Auth.confirmaçãoTermos()
}) 
Then(" será exibido a lista de requisito para a senha com o elemento em destaque do não cumprimento referente a exigência de caracteres especiais",() =>{
    
})

//Scenario: cadastro com senha sem numero 
Given(" que o usuário esteja na página criação de conta da Kinvo",() =>{
    cy.visit('/')
})
When(" informar senha com ausência de número",() =>{
    cy.log('Nesse momento vamos validar a notificação de preenchimento errado no campo email')
    Auth.cadastroSemNumber(name, lastName, email, password3)
    Auth.confirmaçãoTermos()
})
Then(" será exibido a lista de requisito para a senha com o elemento em destaque do não cumprimento referente a exigência de números",() =>{
    
})

//Scenario: cadastro com senha com menos de 8 caracteres 
Given(" que o usuário esteja na página criação de conta da Kinvo",() =>{
    cy.visit('/')
})
When(" informar senha com menos de 8 caracteres",() =>{
    cy.log('Nesse momento vamos validar a notificação de preenchimento errado no campo email')
    Auth.cadastroSemLetra_MinimoNecessario(name, lastName, email, password5)
    Auth.confirmaçãoTermos()
}) 
Then(" será exibido a lista de requisito para a senha com o elemento em destaque do não cumprimento referente a exigência mínima de 8 caracteres",() =>{
    
})


//cadastro completo e sem confirmação dos aceites

//Scenario: cadastro sem confirmação das políticas de privacidade 
Given(" que o usuário esteja na página criação de conta da Kinvo",() =>{
    cy.visit('/')
})
When(" informar todos os dados de forma valida e confirmar todos os requisitos necessários",() =>{
    
}) 
And ("dar aceite nos termos de uso",() =>{
    
}) 
And ("não dar aceite na política de privacidade",() =>{
    
}) 
Then(" botão de criação de conta desabilitado",() =>{
    
})

//Scenario: cadastro sem confirmação dos termos de uso
Given(" que o usuário esteja na página criação de conta da Kinvo",() =>{
    cy.visit('/')
})
When(" informar todos os dados de forma valida e confirmar todos os requisitos necessários",() =>{
    
})
And ("dar aceite nas políticas de privacidade",() =>{
    
}) 
And ("não dar aceite nos termos de uso",() =>{
    
})  
Then(" botão de criação de conta desabilitado",() =>{
    
})

//Scenario: cadastro sem confirmação captcha 
Given(" que o usuário esteja na página criação de conta da Kinvo",() =>{
    cy.visit('/')
})
When(" informar todos os dados de forma valida e confirmar todos os requisitos necessários",() =>{
    
})
And ("dar aceite nos termos de uso",() =>{
    
}) 
And ("dar aceite na política de privacidade",() =>{
    
})
And ("não marcar o reCaptcha",() =>{
    
})      
Then(" botão de criação de conta desabilitado",() =>{
    
})




