class RemoveRequirementsIdFromPlants < ActiveRecord::Migration[5.2]
  def change
    remove_column :plants, :requirements_id, :bigint
  end
end
