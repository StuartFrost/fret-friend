FactoryGirl.define do
  factory :practice_log do
    date { Faker::Date.between(7.days.ago, Date.today) }
    time_from { Faker::Time.forward(0, :morning) }
    time_to { Faker::Time.forward(0, :afternoon) }
    practiced { Faker::ChuckNorris.fact }
  end
end
