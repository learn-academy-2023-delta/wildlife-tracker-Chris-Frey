class Sighting < ApplicationRecord
  has_many :sightinglogs
  has_many :animals, through: :sightinglogs
  validates :latitude, :longitude, :date, presence: true
end
