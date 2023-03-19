package com.cydeo.library.step_definitions;

import com.cydeo.library.pages.PageBase;
import com.cydeo.library.pages.Home_Page;
import com.cydeo.library.pages.Users_Page;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.WebElement;

import java.util.ArrayList;
import java.util.List;

public class UsersTable_StepDefinitions extends PageBase {

    Home_Page homePage = new Home_Page();
    Users_Page usersPage = new Users_Page();


    @And("user goes to Users page")
    public void userGoesToUsersPage() throws InterruptedException {
        usersPageLink.click();
    }

    @Then("user should see columns")
    public void userShouldSeeColumns(List<String> expectedColumnNames) {
        List<String> actualElementTexts = new ArrayList<String>();
        for (WebElement tableHeader : usersPage.TableHeaders) {
            actualElementTexts.add(tableHeader.getText());
        }

        Assert.assertEquals(expectedColumnNames,actualElementTexts);

    }



}
