class GardenPlant < ApplicationRecord
  has_many :statuses
  belongs_to :plant
  belongs_to :user
  validates  :location, presence: true

  delegate :name, to: :plant

  # Retreive the status (Status instance) for today
  def status_today
    status = statuses.where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day).first
    status = statuses.build unless status

    status
  end

  # plants who should be watered today
  def self.to_be_watered_today
    where(water_on: Date.today)
  end

  def mark_as_watered
    status = status_today
    status.watered_on = Time.zone.now
    update_water_on if status.save
  end

  # calculating the days for the next watering from the plant requirements
  def update_water_on
    next_watering = plant.days_between_each_watering.days.from_now
    self.update(water_on: next_watering)
  end

  def overall_score

  end
end
