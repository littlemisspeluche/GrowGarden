require "openweather2"

module DailyScoreHelper
  def temperature_daily_score(plant, today_temp)
    min_temp = plant.requirement.temperature.split[0].to_f
    max_temp = plant.requirement.temperature.split[2].to_f
    today_temp < min_temp || today_temp > max_temp ? 1 : 0
  end

  def self.setting_daily_temp(garden)
    Openweather2.configure do |config|
        config.endpoint = 'http://api.openweathermap.org/data/2.5/weather'
        config.apikey = "7522ff79b2ce460c78e068e593355180"
    end
    puts "saving to db"
    today_temp = Openweather2.get_weather(city: "#{garden.location}", units: 'metric')
    garden.status.daily_temp = today_temp.temperature
    garden.status.save
  end


################GETTING CLOUD INFO FROM API
  def self.getting_daily_light(garden)
    Openweather2.configure do |config|
        config.endpoint = 'http://api.openweathermap.org/data/2.5/weather'
        config.apikey = "7522ff79b2ce460c78e068e593355180"
    end
    today_light = Openweather2.get_weather(city: "#{garden.location}", units: 'metric')
    garden.status.daily_light = today_light.clouds
    garden.status.save
  end

################ updating databse
  def self.setting_daily_light(garden)
    if garden.status.daily_light.to_i < 20
      garden.status.daily_light = "Full Sun"
    elsif garden.status.daily_light.to_i > 70
      garden.status.daily_light = "Partial Shade"
    else
      garden.status.daily_light = "Full Sun to Partial Shade"
    end
    garden.status.save
  end








  ## TODO: light_daily_score method, given plant and todays light

  ## TODO: watering_daily_score method, given plant and todays water

    ## The only function you will need to export/use
    ## TODO: todays total score
    ## todays_total_score = temperature_daily_score(plant, todays_temp)
    ## + light_daily_score(plant, todays_light) + water_daily_score(plant, todays_water
end
