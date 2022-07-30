package com.kinvo.core;

import org.junit.After;
import org.junit.Before;

import com.kinvo.page.cadastroPage;

public class BaseTest {
    
    cadastroPage page = new cadastroPage();

    @Before
    public void inicializa(){
        page.acessarTelaCadastro();
    }

    @After
    public void finaliza(){
        DriverFactory.killDriver();
    }
}
