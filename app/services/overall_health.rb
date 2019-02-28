class OverallHealth
  def initialize(options = {})
    @garden = options[:garden]
    @score = 0
  end

  def perform
  end

  private
  def check_weather(garden)
    min_temp = garden.plant.requirement.temperature.split[0].to_f
    max_temp = garden.plant.requirement.temperature.split[2].to_f
    today_temp < min_temp || today_temp > max_temp ? @score += 1 : @score += 0
  end

  def check_light(garden)
    light_status = garden.status.daily_light
    light_requirement = garden.plant.requirement.light
    light_status.include?(light_requirement) ? @score += 0 : @score += 1
  end

  def check_water
  end
end
