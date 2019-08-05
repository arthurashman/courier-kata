require 'parcel'

describe Parcel do
  subject(:parcel) {described_class.new}

  it 'exists' do
    expect(parcel).to be_a_kind_of(Parcel)
  end
end
