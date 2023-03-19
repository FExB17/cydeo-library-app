package com.cydeo.library.pages;

import com.cydeo.library.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class Home_Page {
    public Home_Page() {
        PageFactory.initElements(Driver.getDriver(), this);
    }

    @FindBy (xpath = "//h3[.='Book Management']")
    public WebElement DashBoardText;

    @FindBy(id="user_count")
    public WebElement userCount;

    @FindBy(xpath = "//span[.='Users']")
    public WebElement usersPageLink;


}
