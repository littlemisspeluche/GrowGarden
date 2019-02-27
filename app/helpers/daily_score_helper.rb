module DailyScoreHelper
  def temperature_daily_score(plant, today_temp)
    min_temp = plant.requirement.temperature.split[0].to_f
    max_temp = plant.requirement.temperature.split[2].to_f
    today_temp < min_temp || today_temp > max_temp ? 1 : 0
  end

  ## TODO: light_daily_score method, given plant and todays light

  ## TODO: watering_daily_score method, given plant and todays water

    ## The only function you will need to export/use
    ## TODO: todays total score
    ## todays_total_score = temperature_daily_score(plant, todays_temp)
    ## + light_daily_score(plant, todays_light) + water_daily_score(plant, todays_water
end
