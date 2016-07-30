Feature: Dashboard

  Scenario: Viewing hours practiced this week
    Given there are some entries in the database
    When I visit the dashboard page
    Then I should see the number of hours practiced this week
