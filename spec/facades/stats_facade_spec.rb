require 'rails_helper'

describe StatsFacade do
  before do
    @facade = StatsFacade.new PracticeLog.all
  end

  describe  "#hours_practiced" do
    it "returns the number of hours practiced from the given logs" do
      FactoryGirl.create :practice_log, date: 1.week.ago, time_from: Time.now - 2.hours, time_to: Time.now
      FactoryGirl.create :practice_log, date: Date.today, time_from: Time.now - 2.hours, time_to: Time.now

      expect(@facade.hours_practiced(Date.today)).to eq 2
    end
  end

  describe "hours_practiced_per_day" do
    it "returns a hash containing the number of hours practiced for each week within the date range" do
      FactoryGirl.create :practice_log, date: Date.today, time_from: "19:00", time_to: "21:00"
      FactoryGirl.create :practice_log, date: Date.today - 2.weeks, time_from: "18:00", time_to: "21:00"

      week = Date.today.at_beginning_of_week
      result = {week - 4.weeks => 0.0,
                week - 3.weeks => 0.0,
                week - 2.weeks => 3.0,
                week - 1.weeks => 0.0,
                week => 2.0}
      expect(@facade.hours_practiced_per_week(Date.today - 1.month)).to eq result
    end
  end

  describe "#recently_practiced" do
    it "returns a hash containing what has been practiced along with number of occurrences" do
      FactoryGirl.create :practice_log, practiced: "Scales. CAGED chords. Montreal"
      FactoryGirl.create :practice_log, practiced: "Hallelujah. Scales. Arpeggios"

      result = { "Scales" => 2, "CAGED chords" => 1, "Montreal" => 1, "Hallelujah" => 1, "Arpeggios" => 1 }
      expect(@facade.recently_practiced).to eq result
    end
  end
end
