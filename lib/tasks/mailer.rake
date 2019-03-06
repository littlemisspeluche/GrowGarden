namespace :status do
  desc "TODO"
  task plants: :environment do
    puts 'starting.....'
    user = User.last
    UserMailer.daily_report(user).deliver_now
  end
end
