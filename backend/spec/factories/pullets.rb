FactoryBot.define do
  factory :pullet do
    entry_date { Date.today }
    age_in_days { Faker::Number.between(from: 1, to: 100) }
    quantity { Faker::Number.between(from: 10, to: 200) }
    average_weight { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
  end
end