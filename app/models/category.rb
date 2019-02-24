class Category < ApplicationRecord
  has_many :species
  validates :name, uniqueness: true, presence: true
  validates :description, presence: true
end
