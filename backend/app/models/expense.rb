class Expense
  include Mongoid::Document
  include Mongoid::Timestamps

  field :expense_type, type: String
  field :amount, type: Float
  field :description, type: String

  validates :expense_type, presence: true
  validates :amount, numericality: { greater_than: 0 }
  validates :description, presence: true
end
