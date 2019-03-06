class RemoveWaterOnFromGardenPlant < ActiveRecord::Migration[5.2]
  def change
    remove_column :garden_plants, :water_on, :datetime
  end
end
