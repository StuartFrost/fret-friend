Feature: Dashboard

  Scenario: Viewing hours practiced this week
    Given there are some entries in the database
    When I visit the dashboard page
    Then I should see the number of hours practiced this week

    @wip
  Scenario: Viewing hours practiced last week
    Given there are some entries from last week
    When I visit the dashboard page
    Then I should see the number of hours practiced last week
