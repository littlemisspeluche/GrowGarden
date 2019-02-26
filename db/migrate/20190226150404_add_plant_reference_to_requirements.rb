class AddPlantReferenceToRequirements < ActiveRecord::Migration[5.2]
  def change
    add_reference :requirements, :plant, foreign_key: true
  end
end
