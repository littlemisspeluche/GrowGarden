class AddStatusToGardenPlants < ActiveRecord::Migration[5.2]
  def change
    add_reference :garden_plants, :status, foreign_key: true
  end
end
