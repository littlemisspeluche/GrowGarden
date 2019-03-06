  desc "Send daily reports to users"
  task daily_report: :environment do

  	User.with_garden.each do |user|
  		UserMailer.daily_report(user)
  	end
  end
