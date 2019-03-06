namespace :plants do
	desc "Get todays weather"
	task update: :environment do
puts"hello"
		GardenPlant.find_each do |plant|
	      	api = WeatherApi.new(garden: plant)
	      	api.perform
	      	health = OverallHealth.new(garden: plant)
	     	health.perform
	      	plant.health = health.score
	      	plant.save
		end
	end

	desc "Send daily reports to users"
	task daily_report: :environment do

		User.with_garden.each do |user|
			UserMailer.daily_report(user).deliver_now
		end
	end
end
