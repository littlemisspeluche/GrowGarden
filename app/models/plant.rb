class Plant < ApplicationRecord
  belongs_to :species
  has_many :garden_plants
  # validates :description, :requirements, presence: true
  validates :name, uniqueness: true, presence: true
end
