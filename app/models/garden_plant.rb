class GardenPlant < ApplicationRecord
  has_many :statuses
  belongs_to :plant
  belongs_to :user
  validates  :location, presence: true

  delegate :name, to: :plant

  attr_accessor :health_percentage

  after_initialize :convert_health_to_percentage
  after_create :update_status

   def light_to_int

    case self.plant.requirement.light
    when "Full Sun"
      15
    when "Full Sun to Partial Shade"
      10
    else
      5
    end
  end

  def daily_light_to_int

    light =  self.status_today.daily_light
    if light
      if light < '25'
        return 15
      elsif light > '75'
        return 5
      else
        return 10
      end
    end
  end

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

  private 

  def convert_health_to_percentage
    case health
    when 0
      @health_percentage = "85%"
    when 1
      @health_percentage =  "65%"
    when 2
     @health_percentage = '55%'
    end
  end

  def update_status
    api = WeatherApi.new(garden: self)
    api.perform
    health = OverallHealth.new(garden: self)
    health.perform
    self.health = health.score
    self.save
  end
end
