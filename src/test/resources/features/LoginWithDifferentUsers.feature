@wip
Feature: Library app login feature

  UserStory:
  As a user, I should be able to login with different users using their correct emails and passwords. When I login,
  I should be able to see username in the account username section.

  Background: Assuming that the user is already on the login page
    Given User is on the login page

  @allAccounts
  Scenario Outline: login with different users and their valid credentials
    When user enters valid email "<email>"
    And user enters valid password "<password>"
    And user clicks on login Button
    Then "<user>" should be on home page
    And user should see "<username>" in the profile

    @studentDataTable
    Examples:
      | username        | email             | password    | user    |
      | Test Student 1  | student1@library  | libraryUser | Student |
      | Test Student 2  | student2@library  | libraryUser | Student |
      | Test Student 3  | student3@library  | libraryUser | Student |
      | Test Student 4  | student4@library  | libraryUser | Student |
      | Test Student 5  | student5@library  | libraryUser | Student |
      | Test Student 6  | student6@library  | libraryUser | Student |
      | Test Student 7  | student7@library  | libraryUser | Student |
      | Test Student 8  | student8@library  | libraryUser | Student |
      | Test Student 9  | student9@library  | libraryUser | Student |
      | Test Student 10 | student10@library | libraryUser | Student |
      | Test Student 11 | student11@library | libraryUser | Student |
      | Test Student 12 | student12@library | libraryUser | Student |
      | Test Student 13 | student13@library | libraryUser | Student |
      | Test Student 14 | student14@library | libraryUser | Student |
      | Test Student 15 | student15@library | libraryUser | Student |
      | Test Student 16 | student16@library | libraryUser | Student |
      | Test Student 17 | student17@library | libraryUser | Student |
      | Test Student 18 | student18@library | libraryUser | Student |
      | Test Student 19 | student19@library | libraryUser | Student |
      | Test Student 20 | student20@library | libraryUser | Student |
      | Test Student 21 | student21@library | libraryUser | Student |
      | Test Student 22 | student22@library | libraryUser | Student |
      | Test Student 23 | student23@library | libraryUser | Student |
      | Test Student 24 | student24@library | libraryUser | Student |
      | Test Student 25 | student25@library | libraryUser | Student |
      | Test Student 26 | student26@library | libraryUser | Student |
      | Test Student 27 | student27@library | libraryUser | Student |
      | Test Student 28 | student28@library | libraryUser | Student |
      | Test Student 29 | student29@library | libraryUser | Student |
      | Test Student 30 | student30@library | libraryUser | Student |
      | Test Student 31 | student31@library | libraryUser | Student |
      | Test Student 32 | student32@library | libraryUser | Student |
      | Test Student 33 | student33@library | libraryUser | Student |
      | Test Student 34 | student34@library | libraryUser | Student |
      | Test Student 35 | student35@library | libraryUser | Student |
      | Test Student 36 | student36@library | libraryUser | Student |
      | Test Student 37 | student37@library | libraryUser | Student |
      | Test Student 38 | student38@library | libraryUser | Student |
      | Test Student 39 | student39@library | libraryUser | Student |
      | Test Student 40 | student40@library | libraryUser | Student |
      | Test Student 41 | student41@library | libraryUser | Student |
      | Test Student 42 | student42@library | libraryUser | Student |
      | Test Student 43 | student43@library | libraryUser | Student |
      | Test Student 44 | student44@library | libraryUser | Student |
      | Test Student 45 | student45@library | libraryUser | Student |
      | Test Student 46 | student46@library | libraryUser | Student |
      | Test Student 47 | student47@library | libraryUser | Student |
      | Test Student 48 | student48@library | libraryUser | Student |
      | Test Student 49 | student49@library | libraryUser | Student |
      | Test Student 50 | student50@library | libraryUser | Student |
      | Test Student 51 | student51@library | libraryUser | Student |
      | Test Student 52 | student52@library | libraryUser | Student |
      | Test Student 53 | student53@library | libraryUser | Student |
      | Test Student 54 | student54@library | libraryUser | Student |
      | Test Student 55 | student55@library | libraryUser | Student |
      | Test Student 56 | student56@library | libraryUser | Student |
      | Test Student 57 | student57@library | libraryUser | Student |
      | Test Student 58 | student58@library | libraryUser | Student |
      | Test Student 59 | student59@library | libraryUser | Student |
      | Test Student 60 | student60@library | libraryUser | Student |

    @librarianDataTable
    Examples:
      | username          | email               | password    | user      |
      | Test Librarian 3  | librarian3@library  | libraryUser | Librarian |
      | Test Librarian 4  | librarian4@library  | libraryUser | Librarian |
      | Test Librarian 5  | librarian5@library  | libraryUser | Librarian |
      | Test Librarian 6  | librarian6@library  | libraryUser | Librarian |
      | Test Librarian 7  | librarian7@library  | libraryUser | Librarian |
      | Test Librarian 8  | librarian8@library  | libraryUser | Librarian |
      | Test Librarian 9  | librarian9@library  | libraryUser | Librarian |
      | Test Librarian 10 | librarian10@library | libraryUser | Librarian |
      | Test Librarian 11 | librarian11@library | libraryUser | Librarian |
      | Test Librarian 12 | librarian12@library | libraryUser | Librarian |
      | Test Librarian 13 | librarian13@library | libraryUser | Librarian |
      | Test Librarian 14 | librarian14@library | libraryUser | Librarian |
      | Test Librarian 15 | librarian15@library | libraryUser | Librarian |
      | Test Librarian 16 | librarian16@library | libraryUser | Librarian |
      | Test Librarian 17 | librarian17@library | libraryUser | Librarian |
      | Test Librarian 18 | librarian18@library | libraryUser | Librarian |
      | Test Librarian 19 | librarian19@library | libraryUser | Librarian |
      | Test Librarian 20 | librarian20@library | libraryUser | Librarian |
      | Test Librarian 21 | librarian21@library | libraryUser | Librarian |
      | Test Librarian 22 | librarian22@library | libraryUser | Librarian |
      | Test Librarian 23 | librarian23@library | libraryUser | Librarian |
      | Test Librarian 24 | librarian24@library | libraryUser | Librarian |
      | Test Librarian 25 | librarian25@library | libraryUser | Librarian |
      | Test Librarian 26 | librarian26@library | libraryUser | Librarian |
      | Test Librarian 27 | librarian27@library | libraryUser | Librarian |
      | Test Librarian 28 | librarian28@library | libraryUser | Librarian |
      | Test Librarian 29 | librarian29@library | libraryUser | Librarian |
      | Test Librarian 30 | librarian30@library | libraryUser | Librarian |
      | Test Librarian 31 | librarian31@library | libraryUser | Librarian |
      | Test Librarian 32 | librarian32@library | libraryUser | Librarian |
      | Test Librarian 33 | librarian33@library | libraryUser | Librarian |
      | Test Librarian 34 | librarian34@library | libraryUser | Librarian |
      | Test Librarian 35 | librarian35@library | libraryUser | Librarian |
      | Test Librarian 36 | librarian36@library | libraryUser | Librarian |
      | Test Librarian 37 | librarian37@library | libraryUser | Librarian |
      | Test Librarian 38 | librarian38@library | libraryUser | Librarian |
      | Test Librarian 39 | librarian39@library | libraryUser | Librarian |
      | Test Librarian 40 | librarian40@library | libraryUser | Librarian |
      | Test Librarian 41 | librarian41@library | libraryUser | Librarian |
      | Test Librarian 42 | librarian42@library | libraryUser | Librarian |
      | Test Librarian 43 | librarian43@library | libraryUser | Librarian |
      | Test Librarian 44 | librarian44@library | libraryUser | Librarian |
      | Test Librarian 45 | librarian45@library | libraryUser | Librarian |
      | Test Librarian 46 | librarian46@library | libraryUser | Librarian |
      | Test Librarian 47 | librarian47@library | libraryUser | Librarian |
      | Test Librarian 48 | librarian48@library | libraryUser | Librarian |
      | Test Librarian 49 | librarian49@library | libraryUser | Librarian |
      | Test Librarian 50 | librarian50@library | libraryUser | Librarian |
      | Test Librarian 51 | librarian51@library | libraryUser | Librarian |
      | Test Librarian 52 | librarian52@library | libraryUser | Librarian |
      | Test Librarian 53 | librarian53@library | libraryUser | Librarian |
      | Test Librarian 54 | librarian54@library | libraryUser | Librarian |
      | Test Librarian 55 | librarian55@library | libraryUser | Librarian |
      | Test Librarian 56 | librarian56@library | libraryUser | Librarian |
      | Test Librarian 57 | librarian57@library | libraryUser | Librarian |
      | Test Librarian 58 | librarian58@library | libraryUser | Librarian |
      | Test Librarian 59 | librarian59@library | libraryUser | Librarian |
      | Test Librarian 60 | librarian60@library | libraryUser | Librarian |