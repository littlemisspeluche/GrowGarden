namespace :user do
  desc "TODO"
  task update_all: :environment do
    puts 'starting.....'
    GardenPlant.all.each do |garden|
      garden.update(water_on: Date.today)
      set = WeatherApi.new(garden: garden)
      puts "Weather......"
      set.perform
      health = OverallHealth.new(garden: garden)
      puts "Health....."
      health.perform
      garden.health = health.score
      garden.save
      puts "Added Score #{health.score} points to #{garden.plant.name}"
    end
  end
end
