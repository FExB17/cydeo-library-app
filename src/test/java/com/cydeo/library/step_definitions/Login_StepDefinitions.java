package com.cydeo.library.step_definitions;

import com.cydeo.library.pages.LibraryHome_Page;
import com.cydeo.library.pages.LibraryLogin_Page;
import com.cydeo.library.utilities.ConfigurationReader;
import com.cydeo.library.utilities.Driver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class Login_StepDefinitions {

LibraryLogin_Page loginPage = new LibraryLogin_Page();
LibraryHome_Page homePage = new LibraryHome_Page();

    @Given("User is on the login page")
    public void user_is_on_the_login_page() {
       Driver.getDriver().get(ConfigurationReader.getProperty("libraryPage"));
    }

    @When("user enters student username")
    public void user_enters_student_username() {
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
    @Then("books should be displayed")
    public void books_should_be_displayed() {
       /* String actual = homePage.DashBoardText.getText();
        Assert.assertEquals("not on home page","Book Management",actual);*/
        String expected = "books";
        WebDriverWait wait = new WebDriverWait(Driver.getDriver(),10);
        wait.until(ExpectedConditions.urlContains(expected));
        System.out.println(Driver.getDriver().getCurrentUrl());
        Assert.assertTrue(Driver.getDriver().getCurrentUrl().contains(expected));
    }
    @Then("dashboard should be displayed")
    public void dashboardShouldBeDisplayed() {
        String expected = "dashboard";
        WebDriverWait wait = new WebDriverWait(Driver.getDriver(),10);
        wait.until(ExpectedConditions.urlContains(expected));

        Assert.assertTrue(Driver.getDriver().getCurrentUrl().contains(expected));
    }

    @When("user enters student username {string}")
    public void userEntersStudentUsername(String arg0) {
        loginPage.emailInput.sendKeys(arg0);
    }

    @And("user enters student password {string}")
    public void userEntersStudentPassword(String arg0) {
        loginPage.passwordInput.sendKeys(arg0);
    }

    @When("user enters librarian username {string}")
    public void userEntersLibrarianUsername(String arg0) {
        loginPage.emailInput.sendKeys(arg0);
    }

    @And("user enters librarian password {string}")
    public void userEntersLibrarianPassword(String arg0) {
        loginPage.passwordInput.sendKeys(arg0);
    }
}
