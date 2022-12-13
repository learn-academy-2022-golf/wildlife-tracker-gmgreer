require 'rails_helper'

RSpec.describe Animal, type: :model do
  it 'is not valid without a common name' do
    name = Animal.create scientific_binomial: "random name"
    expect(name.errors[:common_name]).to_not be_empty
  end

  it 'is not valid without a scientific binomial' do
    name = Animal.create common_name: 'random name'
    expect(name.errors[:scientific_binomial]).to_not be_empty
  end

  it 'is not valid if common_name and scientific_binomial match each other' do
    name = Animal.create common_name: 'random name', scientific_binomial: 'random name'
    expect(name.errors[:common_name]).to_not be_empty
  end

  it 'is not valid if common_name already exists on database' do
    Animal.create common_name: 'random name', scientific_binomial: 'does something'
    name = Animal.create common_name: 'random name', scientific_binomial: 'something new'
    expect(name.errors[:common_name]).to_not be_empty
  end

  it 'is not valid if scientific_binomial already exists on database' do
    Animal.create common_name: 'random name', scientific_binomial: 'does something'
    name = Animal.create common_name: 'nots', scientific_binomial: 'does something'
    expect(name.errors[:scientific_binomial]).to_not be_empty
  end


end
