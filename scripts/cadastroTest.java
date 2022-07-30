package com.kinvo.test;

import org.junit.Assert;
import org.junit.Test;

import com.kinvo.core.BaseTest;
import com.kinvo.page.cadastroPage;

public class cadastroTest extends BaseTest{
    
    cadastroPage page = new cadastroPage();

    String nome = "Leonardo";
    String sobrenome ="Silva";
    String email = "test@gmail.com"; 
    String emailInvalido = "test.com";
    String senha = "Teste@1234"; 
    String senhaInvalido = "te3d";
    

    @Test
    public void testeSemPreencherNada(){
    }

    @Test
    public void testePreenchendoSomenteNome(){
        page.setNome(nome);
        page.uso();
        page.politica();

    }

    @Test
    public void testePreenchendoSomenteSobrenome(){
        page.setSobrenome(sobrenome);
        page.uso();
        page.politica();
    }

    @Test
    public void testePreenchendoSomenteEmail(){
        page.setEmail(email);
        page.uso();
        page.politica();
    }

    @Test
    public void testePreenchendoSomenteSenha(){
        page.setSobrenome(senha);
        page.uso();
        page.politica();
    }

    @Test
    public void testeSemPreencherNome(){
        page.setSobrenome(sobrenome);
        page.setEmail(email);
        page.setSenha(senha);
        page.uso();
        page.politica();
    }

    @Test
    public void testeSemPreencherSobrenome(){
        page.setNome(nome);
        page.setEmail(email);
        page.setSobrenome(senha);
        page.uso();
        page.politica();
    }

    @Test
    public void testeSemPreencherEmail(){
        page.setNome(nome);
        page.setSobrenome(sobrenome);
        page.setSenha(senha);
        page.uso();
        page.politica();
    }

    @Test
    public void testePreenchendoEmailInvalido(){
        page.setNome(nome);
        page.setSobrenome(sobrenome);
        page.setEmail(emailInvalido);
        page.setSenha(senha);
        page.uso();
        page.politica();
        Assert.assertEquals("Este email não é válido", page.erroEmail());
    }

    @Test
    public void testeSemPreencherSenha(){
        page.setNome(nome);
        page.setSobrenome(sobrenome);
        page.setEmail(email);
        page.uso();
        page.politica();
    }

    @Test
    public void testePreenchendoSenhaInvalido(){
        page.setNome(nome);
        page.setSobrenome(sobrenome);
        page.setEmail(email);
        page.setSenha(senhaInvalido);
        page.uso();
        page.politica();
    }

    @Test
    public void testeSemTermos(){
        page.setNome(nome);
        page.setSobrenome(sobrenome);
        page.setEmail(email);
        page.setSenha(senha);
    }

    @Test
    public void testeComSucesso() throws InterruptedException{
        page.setNome(nome);
        page.setSobrenome(sobrenome);
        page.setEmail(email);
        page.uso();
        page.politica();
        page.setSenha(senha);
        /* colocar um ponto de interrupção aqui e depurar o teste para fazer o recaptcha manualmente e depois libera a execução*/
        page.cadastrar();
        Thread.sleep(5000);
        Assert.assertEquals("Cadastro realizado com sucesso",page.obterMensagemSucesso());
    }

    

    

}
