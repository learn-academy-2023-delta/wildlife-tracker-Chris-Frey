class Animal < ApplicationRecord
  has_many :sightings, through: :sightinglogs
  has_many :sightingslogs
end
