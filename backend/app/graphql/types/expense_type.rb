module Types
  class ExpenseType < Types::BaseObject
    field :id, ID, null: false
    field :expense_type, String, null: false
    field :amount, Float, null: false
    field :description, String, null: false
  end
end
