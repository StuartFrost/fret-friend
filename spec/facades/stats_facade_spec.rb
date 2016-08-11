require 'rails_helper'

describe StatsFacade do
  describe  "#hours_practiced" do
    it "returns the number of hours practiced from the given logs" do
      FactoryGirl.create_list :practice_log, 2, time_from: Time.now - 2.hours, time_to: Time.now
      @logs = PracticeLog.all
      @facade = StatsFacade.new @logs
      expect(@facade.hours_practiced(Date.today)).to eq 4
    end
  end
end
