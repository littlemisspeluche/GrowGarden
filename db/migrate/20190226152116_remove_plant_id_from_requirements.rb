class RemovePlantIdFromRequirements < ActiveRecord::Migration[5.2]
  def change
    remove_column :requirements, :plant_id, :bigint
  end
end
