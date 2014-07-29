require 'rspec'
require 'parcels'

describe 'Parcel' do
  it 'is initializes dimensions and weight' do
    test_parcel = Parcel.new(2,2,2,50)
    expect(test_parcel).to be_an_instance_of Parcel
  end
  it 'returns the product of length,width and height' do
  test_parcel = Parcel.new(2,2,2,50)
  expect(test_parcel.volume).to eq(8)
  end
  it 'return a cost based on formula' do
    test_parcel = Parcel.new(2,2,2,50)
    test_parcel.volume
    expect(test_parcel.cost_to_ship).to eq(200)

  end

end
