@login
Feature: Login functionality

  Scenario: Error message shown when user using incorrect credentials
    Given I launch my device with Netflix page
    Then I press on Signin button in header section
    And I type email "notexists@aaa.com" on login page
    And T type password "qwerty" on login page
    When I press on SignIn on login page
    Then I expect to see error "1The login information you entered does not match an account in our records. Remember, your password is case-sensitive."


  Scenario: Error message shown when user using incorrect credentials
    Given I launch my device with Netflix page
    Then I press on Signin button in header section
    And I type email "notexists@aaa.com" on login page
    And T type password "qwerty" on login page
    When I press on SignIn on login page