class UserMailerPreview < ActionMailer::Preview
  def welcome
    user = User.first
    UserMailer.welcome(user)
  end

  def plant_added
    user = User.first
    UserMailer.plant_added(user)
  end

  def daily
    user = User.first
    UserMailer.daily_report(user)
  end
end
