Feature: Practice log

  Scenario: View all entries
    Given there are some entries
    When I visit the practice log page
    Then I should see all of the entries

  Scenario: Adding an entry
    When I visit the add practice log page
    And I create a new entry
    Then I should see the new entry

  Scenario: Deleting an entry
    Given there is an entry
    When I visit the practice log page
    And I delete the entry
    Then the entry is deleted
