class CreateGardenPlants < ActiveRecord::Migration[5.2]
  def change
    create_table :garden_plants do |t|
      t.integer :status
      t.string :location
      t.references :plant, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
