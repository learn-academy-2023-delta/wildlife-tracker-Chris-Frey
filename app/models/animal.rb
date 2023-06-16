class Animal < ApplicationRecord
  has_many :sightings, through: :sightinglogs
  has_many :sightingslogs
  validates :common_name, :scientific_name, presence: true
  validates :common_name, :scientific_name, uniqueness {case_sensitive: false}
end
