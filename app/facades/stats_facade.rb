class StatsFacade
  attr_reader :logs

  def initialize(logs)
    @logs = logs
  end

  def this_week
    @logs.where(date: Date.today.at_beginning_of_week..Date.today.at_end_of_week)
  end

  def last_week
    @logs.where(date: 1.week.ago.at_beginning_of_week..1.week.ago.at_end_of_week)
  end

  def hours_practiced logs_from_week
    result = 0
    logs_from_week.each do |log|
      result += ((log.time_to - log.time_from) / 1.hour) 
    end
    result
  end
end
