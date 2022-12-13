require 'rails_helper'

RSpec.describe Sighting, type: :model do
  it 'is not valid without a latitude' do
    name = Sighting.create  longitude:123.1234, date:"2022-12-03"
    expect(name.errors[:latitude]).to_not be_empty
  end

  it 'is not valid without a longitude' do
    name = Sighting.create latitude:12.1212,  date:"2022-12-03"
    expect(name.errors[:longitude]).to_not be_empty
  end

  it 'is not valid without a date' do
    name = Sighting.create latitude:12.1212, longitude:123.1234 
    expect(name.errors[:date]).to_not be_empty
  end
end
