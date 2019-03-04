namespace :seed do
  desc "TODO"
  task clean: :environment do
    puts 'starting.....'
    GardenPlant.all.each do |garden|
      user = User.last
      garden.user = user if garden.user == nil
      garden.location = "New York" if garden.location == "in" || garden.location == "out"
      garden.plant = Plant.last if garden.plant == nil
      garden.save
    end
  end
end
