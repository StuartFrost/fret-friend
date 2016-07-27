FactoryGirl.define do
  factory :practice_log do
    date { Faker::Date.backward(7) }
    time_from { Faker::Time.between(DateTime.now - 8, DateTime.now - 4) }
    time_to { Faker::Time.between(DateTime.now - 4, DateTime.now) }
    practiced { Faker::ChuckNorris.fact }
  end
end
