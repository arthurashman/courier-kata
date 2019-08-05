require 'courier'

describe Courier do

  describe '#calculate_price' do

    it 'calculates correct price for a small parcel' do
      courier = Courier.new
      small_parcel = instance_double("Parcel", :size => "small")  
      expect(courier.calculate_price(parcel: small_parcel)).to eq(3)
    end
    it 'calculates correct price for a medium parcel' do
      courier = Courier.new
      medium_parcel = instance_double("Parcel", :size => "medium")  
      expect(courier.calculate_price(parcel: medium_parcel)).to eq(8)
    end
    it 'calculates correct price for a large parcel' do
      courier = Courier.new
      large_parcel = instance_double("Parcel", :size => "large")  
      expect(courier.calculate_price(parcel: large_parcel)).to eq(15)
    end
    it 'calculates correct price for an XL parcel' do
      courier = Courier.new
      xl_parcel = instance_double("Parcel", :size => "XL")  
      expect(courier.calculate_price(parcel: xl_parcel)).to eq(25)
    end
  end

  describe '#print_price' do
    it 'prints correct price for a small parcel' do
      courier = Courier.new
      small_parcel = instance_double("Parcel", :size => "small")  
      courier.calculate_price(parcel: small_parcel)
      expect(courier.print_price).to eq("Subtotal = $3\\nTotal = $3")
    end 
    it 'prints correct price for a medium parcel' do
      courier = Courier.new
      medium_parcel = instance_double("Parcel", :size => "medium")  
      courier.calculate_price(parcel: medium_parcel)
      expect(courier.print_price).to eq("Subtotal = $8\\nTotal = $8")
    end 
    it 'prints correct price for a large parcel' do
      courier = Courier.new
      large_parcel = instance_double("Parcel", :size => "large")  
      courier.calculate_price(parcel: large_parcel)
      expect(courier.print_price).to eq("Subtotal = $15\\nTotal = $15")
    end 
    it 'prints correct price for a XL parcel' do
      courier = Courier.new
      xl_parcel = instance_double("Parcel", :size => "XL")  
      courier.calculate_price(parcel: xl_parcel)
      expect(courier.print_price).to eq("Subtotal = $25\\nTotal = $25")
    end 
  
    it 'prints correct price for speedy shipping small parcel' do
      courier = Courier.new
      small_parcel = instance_double("Parcel", :size => "small")  
      courier.calculate_price(parcel: small_parcel, speedy: true)
      expect(courier.print_price).to eq("Subtotal = $3\\nSpeedy shipping = $3\\nTotal = $6")
    end 
  

  end
end