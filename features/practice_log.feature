Feature: Practice log

  Scenario: View all entries
    Given there are some entries
    When I visit the practice log page
    Then I should see all of the entries
