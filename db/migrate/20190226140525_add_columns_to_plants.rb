class AddColumnsToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :difficulty, :string
    add_column :plants, :short_description, :text
    add_column :plants, :uses, :string
    add_column :plants, :container, :string
  end
end
