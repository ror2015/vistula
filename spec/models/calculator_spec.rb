require 'rails_helper'

RSpec.describe Calculator, type: :model do
  it "sums correctly" do
    c = Calculator.new

    expect(c.sum(2,3)).to eq(5)
  end
end
