package com.kinvo.page;

import org.openqa.selenium.By;

import com.kinvo.core.BasePage;
import com.kinvo.core.DriverFactory;

public class cadastroPage extends BasePage{
    
    public void acessarTelaCadastro(){
        DriverFactory.getDriver().get("https://app.kinvo.com.br/inscreva-se");
    }

    public void setNome(String nome){
        escrever(By.xpath("//input[@name='firstName']"), nome);
    }

    public void setSobrenome(String sobrenome){
        escrever(By.xpath("//input[@name='lastName']"), sobrenome);
    }

    public void setEmail(String email){
        escrever(By.xpath("//input[@name='email']"), email);
    }

    public void setSenha(String senha){
        escrever(By.xpath("//input[@name='password']"), senha);
    }

    public void cadastrar(){
        clicarBotao(By.xpath("//div[@class='sc-cgwasx cDZWuT']/button"));
    }

    /*****clica no botão politica de privacidade****/
    public void politica(){
        clicarBotao(By.xpath("//a[.='Politica de Privacidade']/../../div/button"));
    }
    /*****clica no botão termos de uso****/
    public void uso(){
        clicarBotao(By.xpath("//a[.='Termos de Uso']/../../div/button"));
    }

    public String erroEmail(){
        return obterErro(By.xpath("//input[@name='email']/../../section/span"));
    } 


    public String obterMensagemSucesso(){
        return obterMensagem(By.xpath("//div/h2"));
    }
    
    
}
