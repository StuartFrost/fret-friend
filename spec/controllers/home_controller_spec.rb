require 'rails_helper'

describe HomeController do
  describe 'GET index' do
    let(:logs) { FactoryGirl.create_list :practice_log, 5 }
    let(:stats) { double :stats_facade }

    before do
     allow(PracticeLog).to receive(:all).and_return logs
     allow(StatsFacade).to receive(:new).with(logs).and_return stats
    end

    it "finds all of the practice logs" do
      get :index
      expect(assigns[:practice_logs]).to eq logs
    end

    it "creates and assigns a new stats facade" do
      get :index
      expect(assigns[:stats_facade]).to eq stats
    end
  end
end
