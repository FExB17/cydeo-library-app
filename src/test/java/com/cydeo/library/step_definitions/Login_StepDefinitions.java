package com.cydeo.library.step_definitions;

import com.cydeo.library.pages.LibraryHome_Page;
import com.cydeo.library.pages.LibraryLogin_Page;
import com.cydeo.library.utilities.ConfigurationReader;
import com.cydeo.library.utilities.Driver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class Login_StepDefinitions {

LibraryLogin_Page loginPage = new LibraryLogin_Page();
LibraryHome_Page homePage = new LibraryHome_Page();

    @Given("User is on the login page")
    public void user_is_on_the_login_page() {
       Driver.getDriver().get(ConfigurationReader.getProperty("libraryPage"));
    }

    @When("user enters student username")
    public void user_enters_student_username() throws InterruptedException {
        loginPage.emailInput.sendKeys("student1@library");
    }
    @When("user enters student password")
    public void user_enters_student_password() {
        loginPage.passwordInput.sendKeys("libraryUser");
    }

    @When("user enters librarian username")
    public void user_enters_librarian_username() {
        loginPage.emailInput.sendKeys("librarian1@library");
    }
    @When("user enters librarian password")
    public void user_enters_librarian_password() {
        loginPage.passwordInput.sendKeys("libraryUser");
    }
    @When("User clicks on Login button")
    public void user_clicks_on_login_button() {
        loginPage.loginButton.click();
    }
    @Then("User should see the dashboard")
    public void user_should_see_the_dashboard() throws InterruptedException {
        Thread.sleep(2000);
       /* String actual = homePage.DashBoardText.getText();
        Assert.assertEquals("not on home page","Book Management",actual);*/

        System.out.println(Driver.getDriver().getCurrentUrl());
        Assert.assertTrue("no dashboard",Driver.getDriver().getCurrentUrl().contains("dashboard"));
    }


}
