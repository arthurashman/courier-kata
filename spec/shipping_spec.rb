require 'shipping'

describe ShippingCalculator do

  it 'exists' do
    shipping_calculator = ShippingCalculator.new
    expect(shipping_calculator).to be_a_kind_of(ShippingCalculator)
  end
end