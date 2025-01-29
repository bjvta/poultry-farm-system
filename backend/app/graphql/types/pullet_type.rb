module Types
  class PulletType < Types::BaseObject
    field :id, ID, null: false
    field :entry_date, GraphQL::Types::ISO8601Date, null: false
    field :age_in_days, Integer, null: false
    field :quantity, Integer, null: false
    field :average_weight, Float, null: true
  end
end