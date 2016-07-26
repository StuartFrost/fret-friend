class PracticeLogController < ApplicationController
  def index
    @entries = PracticeLog.all
  end
end
