class StatsFacade
  attr_reader :logs

  def initialize(logs)
    @logs = logs
  end

  def hours_practiced date
    logs_from_week = @logs.where(date: (date.at_beginning_of_week)..date.at_end_of_week)
    result = 0

    logs_from_week.each do |log|
      result += ((log.time_to - log.time_from) / 1.hour) 
    end
    result.round(1)
  end
end
