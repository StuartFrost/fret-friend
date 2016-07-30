require 'stats_facade'

class HomeController < ApplicationController
  def index
    @practice_logs = PracticeLog.all
    @stats_facade = StatsFacade.new @practice_logs
  end
end
