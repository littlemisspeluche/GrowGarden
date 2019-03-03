class ChangeDailyWateringInStatuses < ActiveRecord::Migration[5.2]
  def change
    remove_column :statuses, :daily_watering
    add_column :statuses, :watered_on, :datetime
  end
end
