require 'rails_helper'

RSpec.describe Pullet, type: :model do
  it "is valid with valid attributes" do
    pullet = build(:pullet)
    expect(pullet).to be_valid
  end

  it "is invalid without an entry date" do
    pullet = build(:pullet, entry_date: nil)
    expect(pullet).not_to be_valid
  end

  it "is invalid with negative age" do
    pullet = build(:pullet, age_in_days: -1)
    expect(pullet).not_to be_valid
  end

  it "is invalid with zero or negative quantity" do
    pullet = build(:pullet, quantity: 0)
    expect(pullet).not_to be_valid
  end
end