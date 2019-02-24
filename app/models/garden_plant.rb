class GardenPlant < ApplicationRecord
  belongs_to :plant
  belongs_to :user
  validates :status, :location, presence: true
end
