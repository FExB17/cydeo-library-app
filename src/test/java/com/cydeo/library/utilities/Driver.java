package com.cydeo.library.utilities;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.concurrent.TimeUnit;

public class Driver {
static String browser;
        private Driver(){}
    private static InheritableThreadLocal<WebDriver> driverPool = new InheritableThreadLocal<>();

    public static WebDriver getDriver (){
        if(driverPool.get() == null){
            if(System.getProperty("browser") != null){
                browser = System.getProperty("browser");
            }else {
                browser = ConfigurationReader.getProperty("browser");
            }
            switch(browser){
                case "chrome":
                    WebDriverManager.chromedriver().setup();
                    driverPool.set(new ChromeDriver());
                    break;
                case "firefox":
                    WebDriverManager.firefoxdriver().setup();
                    driverPool.set(new FirefoxDriver());
                    break;
                case "remote-chrome":
                    String gridAddress = "enterAddress";
                    URL url = null;
                    try {
                        url = new URL("http://" + gridAddress + ":4444/wd/hub");
                    } catch (MalformedURLException e) {
                        e.printStackTrace();
                    }
                    DesiredCapabilities desiredCapabilities = new DesiredCapabilities();
                    desiredCapabilities.setBrowserName("chrome");
                    driverPool.set(new RemoteWebDriver(url,desiredCapabilities));
            }
            driverPool.get().manage().window().maximize();
            driverPool.get().manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        }

        return driverPool.get();
    }

    public static void closeDriver(){
        if(driverPool.get() != null){
            driverPool.get().quit();
            driverPool.remove();
        }
    }


}
