namespace :user do
  desc "TODO"
  task update_all: :environment do
    puts 'starting.....'
    GardenPlant.all.each do |garden|
      set = WeatherApi.new(garden: garden)
      puts "Weather......"
      set.perform
      health = OverallHealth.new(garden: garden)
      puts "Health....."
      health.perform
    end
  end
end
