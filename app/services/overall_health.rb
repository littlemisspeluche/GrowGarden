class OverallHealth
  attr_accessor :score
  def initialize(options = {})
    @garden = options[:garden]
    @score = nil
  end

  def perform
    @score = 0
    puts 'Starting.....'
    @score = check_water + check_light + check_weather
  end

  private
  def check_weather
    return 0 if @garden.created_at.day == Time.now.day

    min_temp = @garden.plant.requirement.temperature.split[0].to_f
    max_temp = @garden.plant.requirement.temperature.split[2].to_f
    @garden.status_today.daily_temp.to_f < min_temp || @garden.status_today.daily_temp.to_f > max_temp ?  1 :  0
  end

  def check_light
    return 0 if @garden.created_at.day == Time.now.day

    light_status = @garden.status_today.daily_light
    light_requirement = @garden.plant.requirement.light
    light_requirement.include?(light_status) ? 0 : 1
  end

  def check_water

    return 1 if @garden.status_today.watered_on.nil? && @garden.water_on.try(:day) == Time.now.day
    return 0 if @garden.created_at.day == Time.now.day
    return 1 if @garden.status_today.watered_on.day > @garden.water_on.day
    return 0

  end
end
