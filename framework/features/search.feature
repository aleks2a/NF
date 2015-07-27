@login
Feature: Login functionality

  Scenario Outline: Error message shown when user using incorrect credentials
    Given I launch my device with Coupa page
#    And I press on expand menu button
    Then I press on Search button
    And I type "<search_parameter>" to search field
    When I press on GO button to initiate search
    Then I expect to get search results
  Examples:
    | search_parameter    |
    | Management solution |
    | expenses software   |