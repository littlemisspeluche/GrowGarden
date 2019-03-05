class AddHealthToGardenPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :garden_plants, :health, :integer
  end
end
