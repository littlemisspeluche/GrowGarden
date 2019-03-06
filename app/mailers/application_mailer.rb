class ApplicationMailer < ActionMailer::Base
  default from: 'GrowGarden <no-replay@growgarden.fun>'
  layout 'mailer'

  before_action :add_logo_attachment
  private

  def add_logo_attachment
    attachments.inline["logo-icon.png"] = File.read("#{Rails.root}/app/assets/images/logo.png")
  end

end
