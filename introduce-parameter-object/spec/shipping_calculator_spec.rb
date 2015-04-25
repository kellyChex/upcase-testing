require 'spec_helper'

describe ShippingCalculator, '#calculate_cost' do
  it 'determines the cost of normal shipping' do
    height = 4.0
    length = 3
    weight = 50
    width = 2.5
    expected_cost = 618.44

    calculator =  ShippingCalculator.new
    cost_parameters = CostParameters.new(height, length, weight, width)
    cost = calculator.calculate_cost(cost_parameters)

    expect(cost).to eq expected_cost
  end

  it 'determines the cost of express shipping' do
    height = 4.0
    length = 3
    weight = 50
    width = 2.5
    expected_cost = 1914.41

    calculator =  ShippingCalculator.new
    cost_parameters = CostParameters.new(height, length, weight, width, true)
    cost = calculator.calculate_cost(cost_parameters)

    expect(cost).to eq expected_cost
  end
end
