module ApplicationHelper
  def format_date date, day
    day ? date.strftime("%a %d-%m-%y") : date.strftime("%d-%m-%y")
  end

  def format_time time
    time.strftime("%H:%M")
  end

  def self.start_of_week date
    date.at_beginning_of_week
  end

  def self.end_of_week date
    date.at_end_of_week
  end
end
