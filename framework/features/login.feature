@login
Feature: Login functionality

  Scenario Outline: Error message shown when user using incorrect credentials
    Given I launch my device with JutIO page
    And I press on expand menu button
#    Then I press on Login button
#    And I type email "<login>" on login page
#    And T type password "<password>" on login page
#    When I press on SignIn on login page
#    Then I expect to see error "Invalid username or password."
  Examples:
    | login               | password |
    | notexists@aaa.com   | qweqwe   |
    | 111                 | 222      |



  Scenario: Error message shown when user using incorrect credentials
    Given I launch my device with JutIO page
    And I press on expand menu button
    Then I press on Login button