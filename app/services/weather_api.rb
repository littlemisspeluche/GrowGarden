class WeatherApi
  def initialize(options = {})
    @garden = options[:garden]
    configure
  end

  def perform
    setting_daily_temp(@garden)
    getting_daily_light(@garden)
    setting_daily_light(@garden)
  end

  private

  def setting_daily_temp(garden)
    puts "Setting Daily Temperature"

    today_temp = Openweather2.get_weather(city: "#{garden.location}", units: 'metric')
    garden.status_today.update(daily_temp: today_temp.temperature)
  rescue StandardError => e
    p "Temperature Error ====>>> #{e}"

  end

  def getting_daily_light(garden)
    puts "Getting Daily Light......"
    today_light = Openweather2.get_weather(city: "#{garden.location}", units: 'metric')
    garden.status_today.update(daily_light: today_light.clouds)
  rescue StandardError => e
     p "Light Error ====>>> #{e}"

  end

  def setting_daily_light(garden)
    puts "Setting Daily Light......"
    if garden.status_today.daily_light.to_i < 20
      garden.status_today.daily_light = "Full Sun"
    elsif garden.status_today.daily_light.to_i > 70
      garden.status_today.daily_light = "Partial Shade"
    else
      garden.status_today.daily_light = "Full Sun to Partial Shade"
    end
    garden.status_today.save
    puts 'Saved'
  rescue StandardError => e
     p "Setting Light Error ====>>> #{e}"

  end


  def configure
    puts 'setting API Key'
    Openweather2.configure do |config|
      config.endpoint = 'http://api.openweathermap.org/data/2.5/weather'
      config.apikey = "7522ff79b2ce460c78e068e593355180"
    end
  end
end
