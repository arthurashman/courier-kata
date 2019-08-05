require 'parcel'

describe Parcel do

  describe '#calculate_size' do
    it 'calculates correct size for small parcels' do
      parcel = Parcel.new([8,8,8], 0.5)
      expect(parcel.calculate_size).to eq("small")
    end
    it 'calculates correct size for medium parcels' do
      parcel = Parcel.new([30,30,30], 2.0)
      expect(parcel.calculate_size).to eq("medium")
    end
    it 'calculates correct size for large parcels' do
      parcel = Parcel.new([80,80,80], 2.0)
      expect(parcel.calculate_size).to eq("large")
    end
    it 'calculates correct size for XL parcels' do
      parcel = Parcel.new([100,100,100], 2.0)
      expect(parcel.calculate_size).to eq("XL")
    end
    it 'calculates correct size for medium parcels with two small dimensions' do
      parcel = Parcel.new([5,15,5], 2.0)
      expect(parcel.calculate_size).to eq("medium")
    end
    it 'calculates correct size for large parcels with two small dimensions' do
      parcel = Parcel.new([75,5,5], 2.0)
      expect(parcel.calculate_size).to eq("large")
    end
    it 'calculates correct size for XL parcels with two small dimensions' do
      parcel = Parcel.new([5,5,100], 2.0)
      expect(parcel.calculate_size).to eq("XL")
    end
    it 'calculates correct size for large parcels with two medium dimensions' do
      parcel = Parcel.new([20,20,90], 2.0)
      expect(parcel.calculate_size).to eq("large")
    end
  end

  describe '#overweight?' do
    it 'returns true if small parcel weight limit exceeded' do
      parcel = Parcel.new([8,8,8], 1.2)
      expect(parcel.overweight?).to eq(true)
    end
  end
end
