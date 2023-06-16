require 'rails_helper'

RSpec.describe Sighting, type: :model do
  it 'is not valid without a latitude' do
    com_name = Sighting.create longitude: 234, date: "2022-08-09"
    expect(com_name.errors[:latitude]).to_not(be_empty)
  end
  it 'is not valid without a longitude' do
    com_name = Sighting.create latitude: 234, date: "2022-08-09"
    expect(com_name.errors[:longitude]).to_not(be_empty)
  end
  it 'is not valid without a date' do
    com_name = Sighting.create longitude: 234, longitude: 9867
    expect(com_name.errors[:date]).to_not(be_empty)
  end


end
