Given(/^there are some entries in the database$/) do
  @log1 = create :practice_log, time_from: 1.hour.ago, time_to: DateTime.now
  @log2 = create :practice_log, time_from: 2.hours.ago, time_to: DateTime.now
end

Given(/^there are some entries from last week$/) do
  @log1 = create :practice_log, date: 1.week.ago, time_from: 3.hour.ago, time_to: DateTime.now
  @log2 = create :practice_log, date: 1.week.ago, time_from: 2.hours.ago, time_to: DateTime.now
end

When(/^I visit the dashboard page$/) do
  visit root_path
end

Then(/^I should see the number of hours practiced this week$/) do
  expect(page).to have_content "3.0"
end

Then(/^I should see the number of hours practiced last week$/) do
  expect(page).to have_content "5.0"
end
