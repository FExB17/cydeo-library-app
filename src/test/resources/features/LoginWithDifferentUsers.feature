
Feature: Library app login feature

  UserStory:
  As a user, I should be able to login with different users using their correct emails and passwords. When I login,
  I should be able to see username in the account username section.

  Background: Assuming that the user is already on the login page
    Given User is on the login page

  @wip
  Scenario Outline: login with different users and their valid credentials
    When <user> enters valid <username>
    And <user> enters valid <password>
    Then <user> should be on the login page
    And <user> should see <name> in the profile


    Examples:
      | user | name | username | password |


