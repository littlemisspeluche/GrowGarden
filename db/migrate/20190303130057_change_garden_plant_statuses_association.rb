class ChangeGardenPlantStatusesAssociation < ActiveRecord::Migration[5.2]
  def change
    remove_column :garden_plants, :status_id
    add_reference :statuses, :garden_plant
  end
end
