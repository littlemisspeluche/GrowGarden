class Plant < ApplicationRecord
  
  belongs_to :species
  has_many :garden_plants
  # validates :description, :requirements, presence: true
  validates :name, uniqueness: true, presence: true
   include PgSearch
  	pg_search_scope :plants_search,
    against: [ :requirements, :name ],
    associated_against: {
      species: [ :name , :description]
      
    },
    using: {
      tsearch: { prefix: true }
    }
    pg_search_scope :search_by_name,
    against: [ :name ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end


