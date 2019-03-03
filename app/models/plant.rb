class Plant < ApplicationRecord
  belongs_to :requirement
  belongs_to :species
  has_many :garden_plants
  # validates :description, :requirements, presence: true
  validates :name, uniqueness: true, presence: true
   include PgSearch
  	pg_search_scope :plants_search,
    against: [:name],
    associated_against: {
      species: [:name, :description]

    },
    using: {
      tsearch: { prefix: true }
    }

    def days_between_each_watering
      case self.requirement.watering.downcase
      when "mesic"
        2
      when "mesic dry"
        4
      when "dry"
        7
      end
    end
end


