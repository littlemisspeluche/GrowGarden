class Plant < ApplicationRecord
  belongs_to :species
  has_many :garden_plants
  validates :description, :requirements
  validates :name, uniqueness: true
end
