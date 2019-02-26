class CreateStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :statuses do |t|
      t.string :daily_watering
      t.string :daily_light
      t.string :daily_temp

      t.timestamps
    end
  end
end
