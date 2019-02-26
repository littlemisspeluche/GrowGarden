class GardenPlant < ApplicationRecord
  belongs_to :plant
  belongs_to :user
  belongs_to :status
  validates  :location, presence: true
end
