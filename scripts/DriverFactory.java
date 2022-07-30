package com.kinvo.core;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
public class DriverFactory {
    private static WebDriver driver;

    public DriverFactory() {}

    public static WebDriver getDriver(){
        if(driver == null){
            System.setProperty("webdriver.chrome.driver", "src/resource/chromedriver v10305060.exe");
            driver = new ChromeDriver();
            driver.manage().window().maximize();
        }
        return driver;
    }

    public static void killDriver(){
        if(driver != null){
            driver.quit();
            driver = null;
        }
    }  
}

    

