Given(/^there are some entries in the database$/) do
  @log1 = create :practice_log
  @log2 = create :practice_log
end

When(/^I visit the dashboard page$/) do
  visit root_path
end

Then(/^I should see the number of hours practiced this week$/) do
  expect(page).to have_content "practiced this week"
end
