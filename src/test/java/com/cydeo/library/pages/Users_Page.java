package com.cydeo.library.pages;

import com.cydeo.library.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.util.List;

public class Users_Page {

    public Users_Page(){
        PageFactory.initElements(Driver.getDriver(),this);
    }

    @FindBy (xpath = "//th")
    public List<WebElement> TableHeaders;



}
