class Species < ApplicationRecord
  belongs_to :category
  has_many :plants
  validates :name, uniqueness: true, presence: true
  validates :description, presence: true
end
