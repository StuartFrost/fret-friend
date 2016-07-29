module ApplicationHelper
  def format_date date, day
    day ? date.strftime("%a %d-%m-%y") : date.strftime("%d-%m-%y")
  end

  def format_time time
    time.strftime("%H:%M")
  end
end
