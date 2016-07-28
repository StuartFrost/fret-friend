Given(/^there are some entries$/) do
  @entries = create_list :practice_log, 5
end

Given(/^there is an entry$/) do
  @entry = create :practice_log
end

When(/^I visit the practice log page$/) do
  @practice_log_page = PracticeLogPage.new
  @practice_log_page.load
end

When(/^I visit the add practice log page$/) do
  @add_entry_page = AddEntryPage.new
  @add_entry_page.load
end

When(/^I create a new entry$/) do
  @new_entry = create :practice_log
  @practice_log_page = PracticeLogPage.new
  @practice_log_page.load
end

When(/^I delete the entry$/) do
  @practice_log_page.click_link "Delete"
end

Then(/^I should see all of the entries$/) do
  @entries.each do |entry|
    expect(@practice_log_page).to show_practice_logs(entry)
  end
end

Then(/^I should see the new entry$/) do
  expect(@practice_log_page).to show_practice_logs(@new_entry)
end

Then(/^the entry is deleted$/) do
   expect { @entry.reload }.to raise_exception(ActiveRecord::RecordNotFound) 
end
