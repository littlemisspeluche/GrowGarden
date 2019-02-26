class RemoveStatusFromGardenPlants < ActiveRecord::Migration[5.2]
  def change
    remove_column :garden_plants, :status, :integer
  end
end
