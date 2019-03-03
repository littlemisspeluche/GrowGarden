class UserMailerPreview < ActionMailer::Preview
  def daily
    user = User.first
    UserMailer.daily(user)
  end
end
