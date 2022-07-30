package com.kinvo.core;

import static com.kinvo.core.DriverFactory.getDriver;

import org.junit.Assert;
import org.openqa.selenium.By;

public class BasePage {

    /********** textField *************/

    public void escrever(By by, String texto) {
        getDriver().findElement(by).clear();
        getDriver().findElement(by).sendKeys(texto);
    }

    public void escrever(String id_campo, String texto) {
        getDriver().findElement(By.id(id_campo)).clear();
        getDriver().findElement(By.id(id_campo)).sendKeys(texto);
    }

    public String obterErro(By by) {
        return getDriver().findElement(by).getText();
    }

    public String obterMensagem(By by) {
        return getDriver().findElement(by).getText();
    }

    public void limpar(By by) {
        getDriver().findElement(by).clear();
    }

    public void limpar(String id_campo) {
        getDriver().findElement(By.id(id_campo)).clear();
    }

    /********** Botão *************/

    public void clicarBotao(By by) {
        getDriver().findElement(by).click();
    }

    public void clicarBotao(String id_botao) {
        getDriver().findElement(By.id(id_botao)).click();
    }
}
