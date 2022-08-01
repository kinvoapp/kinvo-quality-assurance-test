import user from '../../fixtures/user.json'
import util from '../utils'

const el =  require('../elements/MapElements').mapElements

class AuthPage {


    cadastroCorreto(name, lastName, email, password) {
        cy.get(el.CAMPO_TEXTO.NOME).type(name)
        cy.get(el.CAMPO_TEXTO.SOBRENOME).type(lastName)
        cy.get(el.CAMPO_TEXTO.EMAIL).type(email)
        cy.get(el.CAMPO_TEXTO.SENHA).type(password)       
    }

    confirmaçãoTermos(){
        cy.get(el.BUTTON.POLITICA_PRIVACIDADE).click()
        cy.get(el.BUTTON.TERMO_USO).click()
        cy.get(el.BUTTON.N_ROBO).click()        
    }

    confirmação(){
        cy.get(el.BUTTON.CRIAR_CONTA).click()     
    }
    
    cadastroNameNumber(name1, lastName, email, password) {
        cy.get(el.CAMPO_TEXTO.NOME).type(name1)
        cy.get(el.CAMPO_TEXTO.SOBRENOME).type(lastName)
        cy.get(el.CAMPO_TEXTO.EMAIL).type(email)
        cy.get(el.CAMPO_TEXTO.SENHA).type(password)       
    }

    cadastroLastNameNumber(name, lastName1, email, password) {
        cy.get(el.CAMPO_TEXTO.NOME).type(name)
        cy.get(el.CAMPO_TEXTO.SOBRENOME).type(lastName1)
        cy.get(el.CAMPO_TEXTO.EMAIL).type(email)
        cy.get(el.CAMPO_TEXTO.SENHA).type(password)       
    }

    cadastroNotName( lastName, email, password) {
        cy.get(el.CAMPO_TEXTO.SOBRENOME).type(lastName)
        cy.get(el.CAMPO_TEXTO.EMAIL).type(email)
        cy.get(el.CAMPO_TEXTO.SENHA).type(password) 
    }

    cadastroNotLastName(name, email, password) {
        cy.get(el.CAMPO_TEXTO.NOME).type(name)        
        cy.get(el.CAMPO_TEXTO.EMAIL).type(email)
        cy.get(el.CAMPO_TEXTO.SENHA).type(password) 
    }
    
    cadastroSemEmail(name, lastName, password) {
        cy.get(el.CAMPO_TEXTO.NOME).type(name)
        cy.get(el.CAMPO_TEXTO.SOBRENOME).type(lastName)        
        cy.get(el.CAMPO_TEXTO.SENHA).type(password)       
    }

    cadastroEmailIncorreto(name, lastName, email1, password) {
        cy.get(el.CAMPO_TEXTO.NOME).type(name)
        cy.get(el.CAMPO_TEXTO.SOBRENOME).type(lastName)
        cy.get(el.CAMPO_TEXTO.EMAIL).type(email1)
        cy.get(el.CAMPO_TEXTO.SENHA).type(password)       
    }

    cadastroSenhaSemCaractere(name, lastName, email, password1) {
        cy.get(el.CAMPO_TEXTO.NOME).type(name)
        cy.get(el.CAMPO_TEXTO.SOBRENOME).type(lastName)
        cy.get(el.CAMPO_TEXTO.EMAIL).type(email)
        cy.get(el.CAMPO_TEXTO.SENHA).type(password1)       
    }

    cadastroSemLetraMaiuscula(name, lastName, email, password2) {
        cy.get(el.CAMPO_TEXTO.NOME).type(name)
        cy.get(el.CAMPO_TEXTO.SOBRENOME).type(lastName)
        cy.get(el.CAMPO_TEXTO.EMAIL).type(email)
        cy.get(el.CAMPO_TEXTO.SENHA).type(password2)       
    }

    cadastroSemMinuscula(name, lastName, email, password4) {
        cy.get(el.CAMPO_TEXTO.NOME).type(name)
        cy.get(el.CAMPO_TEXTO.SOBRENOME).type(lastName)
        cy.get(el.CAMPO_TEXTO.EMAIL).type(email)
        cy.get(el.CAMPO_TEXTO.SENHA).type(password4)       
    }

    cadastroSemNumber(name, lastName, email, password3) {
        cy.get(el.CAMPO_TEXTO.NOME).type(name)
        cy.get(el.CAMPO_TEXTO.SOBRENOME).type(lastName)
        cy.get(el.CAMPO_TEXTO.EMAIL).type(email)
        cy.get(el.CAMPO_TEXTO.SENHA).type(password3)       
    }
    
    cadastroSemLetra_MinimoNecessario(name, lastName, email, password5) {
        cy.get(el.CAMPO_TEXTO.NOME).type(name)
        cy.get(el.CAMPO_TEXTO.SOBRENOME).type(lastName)
        cy.get(el.CAMPO_TEXTO.EMAIL).type(email)
        cy.get(el.CAMPO_TEXTO.SENHA).type(password5)       
    }
    
}

export default new AuthPage()