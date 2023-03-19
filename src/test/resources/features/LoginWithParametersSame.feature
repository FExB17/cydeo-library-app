Feature: library app login feature
  UserStory:
  As a user, I should be able to login with correct credentials to different accounts

  Background: Assuming that the user already is on the login page
    Given User is on the login page

  @studentParameter
  Scenario: Login as a student in the same line
    When user logs in with student username "student2@library" and student password "libraryUser"
    Then books should be displayed



  @librarianParameter @employee
  Scenario: Login as a librarian in the same line
    When user logs in with librarian username "librarian2@library" and librarian password "libraryUser"
    Then dashboard should be displayed
    And there should be "600" users


