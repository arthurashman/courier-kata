require 'parcel'

describe Parcel do

  describe '#calculate_size' do
    it 'calculates correct size for small parcel' do
      parcel = Parcel.new([8,8,8])
      expect(parcel.calculate_size).to eq("small")
    end
    it 'calculates correct size for medium parcel' do
      parcel = Parcel.new([30,30,30])
      expect(parcel.calculate_size).to eq("medium")
    end


  end
end
