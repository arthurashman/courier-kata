require 'courier'

describe Courier do

  describe '#calculate_price' do
 

    it 'calculates correct price for a small parcel' do
      courier = Courier.new
      small_parcel = instance_double("Parcel", :size => "small")  
      expect(courier.calculate_price(small_parcel)).to eq(3)
    end
    it 'calculates correct price for a medium parcel' do
      courier = Courier.new
      medium_parcel = instance_double("Parcel", :size => "medium")  
      expect(courier.calculate_price(medium_parcel)).to eq(8)
    end
    it 'calculates correct price for a large parcel' do
      courier = Courier.new
      large_parcel = instance_double("Parcel", :size => "large")  
      expect(courier.calculate_price(large_parcel)).to eq(15)
    end
    it 'calculates correct price for an XL parcel' do
      courier = Courier.new
      XL_parcel = instance_double("Parcel", :size => "XL")  
      expect(courier.calculate_price(XL_parcel)).to eq(25)
    end
  end
end