FactoryBot.define do
  factory :expense do
    expense_type { %w[Feed Equipment Labor Medicine].sample }
    amount { Faker::Number.decimal(l_digits: 2, r_digits: 2) }
    description { Faker::Lorem.sentence }
  end
end