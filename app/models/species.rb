class Species < ApplicationRecord
  belongs_to :category
  has_many :plants
  validates :name, uniqueness: true
  validates :description
end
