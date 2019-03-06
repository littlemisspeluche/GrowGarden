class UserMailer < ApplicationMailer
  def welcome(user)
    @user = user
    mail to: @user.email, subject: 'Welcome to Grow Garden'
  end

  def plant_added(user)
    @user = user
    mail to: @user.email, subject: 'Congrats! You are a new plant parent'
  end

  def daily_report(user)
    @user = user
    attachments.inline["Temp.png"] = File.read("#{Rails.root}/app/assets/images/Temp.png")
    attachments.inline["Light.png"] = File.read("#{Rails.root}/app/assets/images/Light.png")
    attachments.inline["Watering.png"] = File.read("#{Rails.root}/app/assets/images/Watering.png")

    mail to: @user.email, subject: 'Your daily garden report'
  end
end
