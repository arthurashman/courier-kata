require 'courier'

describe Courier do

  describe '#calculate_price' do
 

    it 'calculates correct price for a small parcel' do
      courier = Courier.new
      small_parcel = instance_double("Parcel", :size => "small")  
      expect(courier.calculate_price(small_parcel)).to eq(3)
    end
  end
end