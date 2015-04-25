class ShippingCalculator
  EXPRESS_CONVERSION_FACTOR = 3.33
  EXPRESS_RATE = 4.25
  NORMAL_CONVERSION_FACTOR = 6.67
  NORMAL_RATE = 2.75

  def calculate_cost(cost_parameters)
    volume = find_volume(cost_parameters)

    if cost_parameters.express
      express_shipping(volume, cost_parameters.weight)
    else
      normal_shipping(volume, cost_parameters.weight)
    end
  end

  private

  def find_volume(cost_parameters)
    cost_parameters.height * cost_parameters.length * cost_parameters.width
  end

  def express_shipping(volume, weight)
    cost = volume * (weight / EXPRESS_CONVERSION_FACTOR) * EXPRESS_RATE
    cost.round(2)
  end

  def normal_shipping(volume, weight)
    cost = volume * (weight / NORMAL_CONVERSION_FACTOR) * NORMAL_RATE
    cost.round(2)
  end
end
