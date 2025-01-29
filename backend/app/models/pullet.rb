class Pullet
  include Mongoid::Document
  include Mongoid::Timestamps

  field :entry_date, type: Date
  field :age_in_days, type: Integer
  field :quantity, type: Integer
  field :average_weight, type: Float

  validates :entry_date, presence: true
  validates :age_in_days, numericality: { greater_than_or_equal_to: 0 }
  validates :quantity, numericality: { greater_than: 0 }
  validates :average_weight, numericality: { greater_than: 0 }, allow_nil: true
end
