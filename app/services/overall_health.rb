class OverallHealth
  def initialize(options = {})
    @garden = options[:garden]
    @score = 0
  end

  def perform
    puts 'checking weather.....'
    check_weather(@garden)
    puts 'checking light .....'
    check_light(@garden)
    puts "OverallHealth #{@score}"
  end

  private
  def check_weather(garden)
    min_temp = garden.plant.requirement.temperature.split[0].to_f
    max_temp = garden.plant.requirement.temperature.split[2].to_f
    garden.status.daily_temp.to_f < min_temp || garden.status.daily_temp.to_f > max_temp ? @score += 1 : @score += 0
  end

  def check_light(garden)
    light_status = garden.status.daily_light
    light_requirement = garden.plant.requirement.light
    light_requirement.include?(light_status) ? @score += 0 : @score += 1
  end

  def check_water
  end
end
