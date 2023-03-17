Feature: Library app login feature
  UserStory:
  As a user, I should be able to login with correct credentials to different accounts

  Background: Assuming that the user already is on the login page
    Given User is on the login page

  @studentParameter
  Scenario: Login as a student
    When user enters student username "student2@library"
    And user enters student password "libraryUser"
    And User clicks on Login button
    Then books should be displayed

  @librarianParameter @employee
  Scenario: Login as a librarian
    When user enters librarian username "librarian2@library"
    And user enters librarian password "libraryUser"
    And User clicks on Login button
    Then dashboard should be displayed
