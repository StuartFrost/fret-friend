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

  def hours_practiced_per_week date_from
    result = {}
    
    while(date_from <= Date.today)
      result.store(date_from.at_beginning_of_week, hours_practiced(date_from))
      date_from += 1.week
    end
    result
  end

  def recently_practiced
    result = {}
    practiced = practiced_list

    practiced.each do |item|
      if result.key?(item)
        result[item] += 1
      else
        result.store(item, 1)
      end
    end
    result.sort_by{|key, value| value}.reverse[0..4].to_h
  end

  private
  def practiced_list
    practiced = []
    @logs.each do |log|
      practice_items = log.practiced.split(".")
      practice_items.each do |item|
        practiced << item.strip
      end
    end
    practiced
  end
end
