class Sighting < ApplicationRecord
  # belongs_to :animal
  has_many :sightinglogs
  has_many :animals, through: :sightinglogs
end
