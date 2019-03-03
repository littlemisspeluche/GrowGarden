class AddWaterOnToGardenPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :garden_plants, :water_on, :datetime
  end
end
