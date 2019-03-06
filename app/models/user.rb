class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :garden_plants

  after_create :send_welcome_email

  scope :with_garden, -> { includes(:garden_plants).where.not(garden_plants: { id: nil} )}

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end

end
