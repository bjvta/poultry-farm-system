module Mutations
  class UpdatePullet < BaseMutation
    argument :id, ID, required: true
    argument :age_in_days, Integer, required: false
    argument :quantity, Integer, required: false
    argument :average_weight, Float, required: false

    type Types::PulletType

    def resolve(id:, age_in_days: nil, quantity: nil, average_weight: nil)
      pullet = Pullet.find(id)
      pullet.update!(
        age_in_days: age_in_days || pullet.age_in_days,
        quantity: quantity || pullet.quantity,
        average_weight: average_weight || pullet.average_weight
      )
      pullet
    end
  end
end