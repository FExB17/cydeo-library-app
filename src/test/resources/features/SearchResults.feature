
Feature: Search functionality on the users page
  UserStory:
  As a user, when I login as a librarian and I go to Users page, then table should have the following
  • Actions
  • UserID
  • Full Name
  • Email
  • Group
  • Status

  Background: Assuming that the user already is on the login page
    Given User is on the login page

  @librarian
  Scenario:
    When user logs in with librarian username "librarian2@library" and librarian password "libraryUser"
    And user goes to Users page
    Then user should see columns
      | Actions   |
      | User ID   |
      | Full Name |
      | Email     |
      | Group     |
      | Status    |