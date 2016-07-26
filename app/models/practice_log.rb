class PracticeLog < ActiveRecord::Base
  validates :date, presence: true
  validates :time_from, presence: true
  validates :time_to, presence: true
  validates :practiced, presence: true
end
