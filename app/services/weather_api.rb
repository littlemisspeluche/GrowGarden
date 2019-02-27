class WeatherApi
  def initialize(options = {})
    @plant = options[:plant]
  end

  def perform
    check_weather
  end

  private

  def check_weather
    puts "Connecting to OpenWeather..."
    sleep(2)
    puts "Here's the wether for today..."
  end

end
