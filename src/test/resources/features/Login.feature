Feature: Library app login feature
  UserStory:
  As a user, I should be able to login with correct credentials to different accounts

  Background: Assuming that the user already is on the login page
    Given User is on the login page

  @student
  Scenario: Login as a student
    When user enters student username
    And user enters student password
    And User clicks on Login button
    Then User should see the dashboard

  @librarian @employee
  Scenario: Login as a librarian
    When user enters librarian username
    And user enters librarian password
    And User clicks on Login button
    Then User should see the dashboard
