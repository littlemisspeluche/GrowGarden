class AddRequirementReferenceToPlants < ActiveRecord::Migration[5.2]
  def change
    add_reference :plants, :requirement, foreign_key: true
  end
end
