class HomeController < ApplicationController
  def index
    @practice_logs = PracticeLog.where(date: ApplicationHelper.start_of_week..ApplicationHelper.end_of_week)
    @hours_practiced = hours_practiced @practice_logs
  end

  private
  def hours_practiced logs
    result = 0
    logs.each do |log|
      result += ((log.time_to - log.time_from) / 1.hour) 
    end
    result
  end
end
