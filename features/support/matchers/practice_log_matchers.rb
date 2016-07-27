require "rspec/expectations"

module PracticeLogMatchers
  def show_practice_logs entry
		have_practice_log_date(entry)
      .and have_practice_log_practiced(entry)
  end

	%i(date time_from time_to practiced).each do |field|
		RSpec::Matchers.define :"have_practice_log_#{field}" do |log|
			match do |page|
				expect(page).to have_content(log.public_send(field))
			end                
		end
	end
end

World PracticeLogMatchers
