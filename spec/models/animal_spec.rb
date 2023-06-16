require 'rails_helper'

RSpec.describe Animal, type: :model do
  it 'is not valid without a common name' do
    com_name = Animal.create scientific_name: "hatus pullus"
    expect(com_name.errors[:common_name]).to_not(be_empty)
  end

  it 'is not valid without a scientific name' do
    com_name = Animal.create common_name: "rabbit"
    expect(com_name.errors[:scientific_name]).to_not(be_empty)
  end

  it 'is not valid if scientific name exactly matches common name' do
    Animal.create common_name: "rabbit" 
    com_name =  scientific_name: "rabb3it"
    expect(com_name.errors[:scientific_name]).to_not(be equal)
  end


end
