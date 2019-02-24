class Category < ApplicationRecord
  has_many :species
  validates :name, uniqueness: true
  validates :description
end


