FactoryGirl.define do
  factory :practice_log do
    date { Faker::Date.between(7.days.ago, Date.today) }
    time_from { Faker::Time.between(DateTime.now - 2.hours, DateTime.now) }
    time_to { Faker::Time.between(DateTime.now, DateTime.now) }
    practiced { Faker::ChuckNorris.fact }
  end
end
