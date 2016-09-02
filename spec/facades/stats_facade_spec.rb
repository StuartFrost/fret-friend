require 'rails_helper'

describe StatsFacade do
  describe  "#hours_practiced" do
    it "returns the number of hours practiced from the given logs" do
      FactoryGirl.create :practice_log, date: 1.week.ago, time_from: Time.now - 2.hours, time_to: Time.now
      FactoryGirl.create :practice_log, date: Date.today, time_from: Time.now - 2.hours, time_to: Time.now
      @logs = PracticeLog.all
      @facade = StatsFacade.new @logs
      expect(@facade.hours_practiced(Date.today)).to eq 2
    end
  end

  describe "hours_practiced_per_day" do
    it "returns a hash containing the number of hours practiced for each day within the date range" do
      FactoryGirl.create :practice_log, date: Date.today, time_from: "19:00", time_to: "21:00"
      facade = StatsFacade.new PracticeLog.all

      result = {Date.today => 2}
      expect(facade.hours_practiced_per_day(1.month.ago)).to eq result
    end
  end
end
