require 'rails_helper'

RSpec.describe Expense, type: :model do
  it "is valid with valid attributes" do
    expense = build(:expense)
    expect(expense).to be_valid
  end

  it "is invalid without an expense type" do
    expense = build(:expense, expense_type: nil)
    expect(expense).not_to be_valid
  end

  it "is invalid with a negative amount" do
    expense = build(:expense, amount: -10)
    expect(expense).not_to be_valid
  end
end