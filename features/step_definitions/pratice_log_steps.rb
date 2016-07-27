Given(/^there are some entries$/) do
  @entries = create_list :practice_log, 5
end

When(/^I visit the practice log page$/) do
  @practice_log_page = PracticeLogPage.new
  @practice_log_page.load
end

Then(/^I should see all of the entries$/) do
  @entries.each do |entry|
    expect(@practice_log_page).to show_practice_logs(entry)
  end
end
