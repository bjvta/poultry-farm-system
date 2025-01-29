module Mutations
  class CreatePullet < BaseMutation
    argument :entry_date, GraphQL::Types::ISO8601Date, required: true
    argument :age_in_days, Integer, required: true
    argument :quantity, Integer, required: true
    argument :average_weight, Float, required: false

    type Types::PulletType

    def resolve(entry_date:, age_in_days:, quantity:, average_weight: nil)
      Pullet.create!(
        entry_date: entry_date,
        age_in_days: age_in_days,
        quantity: quantity,
        average_weight: average_weight
      )
    end
  end
end