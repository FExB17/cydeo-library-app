package com.cydeo.library.step_definitions;

import com.cydeo.library.pages.Home_Page;
import com.cydeo.library.pages.Login_Page;
import com.cydeo.library.pages.PageBase;
import com.cydeo.library.utilities.Driver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class LoginWithDifferentUsers extends PageBase {

    Login_Page loginPage = new Login_Page();
    Home_Page homePage = new Home_Page();

    WebDriverWait wait = new WebDriverWait(Driver.getDriver(),10);

    @When("user enters valid email {string}")
    public void enters_valid_email(String email) {
        loginPage.emailInput.sendKeys(email);
    }

    @When("user enters valid password {string}")
    public void enters_valid_password(String password) {
        loginPage.passwordInput.sendKeys(password);
    }

    @And("user clicks on login Button")
    public void clicksOnLoginButton() {
        loginPage.loginButton.click();
    }

    @Then("{string} should be on home page")
    public void should_be_on_the_home_page(String user) {
        String expected;
        if(user.equalsIgnoreCase("student")){
             expected = "books";
        }else{
             expected = "dashboard";
        }
        wait.until(ExpectedConditions.urlContains(expected));
        Assert.assertTrue(Driver.getDriver().getCurrentUrl().contains(expected));

    }

    @Then("user should see {string} in the profile")
    public void should_see_in_the_profile(String expectedUserName){

        String actual = profileName.getText();
        Assert.assertEquals(expectedUserName,actual);

    }


}
