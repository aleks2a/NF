@login
Feature: Login functionality

  Scenario Outline: Error message shown when user using incorrect credentials
    Given I launch my device with Netflix page
    Then I press on Signin button in header section
    And I type email "<login>" on login page
    And T type password "<password>" on login page
    When I press on SignIn on login page
    Then I expect to see error "The login information you entered does not match an account in our records. Remember, your password is case-sensitive."
  Examples:
    | login               | password |
    | notexists@aaa.com   | qweqwe   |
    | 111                 | 222      |