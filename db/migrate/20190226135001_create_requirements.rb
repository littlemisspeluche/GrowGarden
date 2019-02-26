class CreateRequirements < ActiveRecord::Migration[5.2]
  def change
    create_table :requirements do |t|
      t.string :light
      t.string :temperature
      t.string :watering

      t.timestamps
    end
  end
end
