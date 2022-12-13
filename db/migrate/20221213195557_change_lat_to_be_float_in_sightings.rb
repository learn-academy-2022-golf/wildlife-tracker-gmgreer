class ChangeLatToBeFloatInSightings < ActiveRecord::Migration[7.0]
  def change
    change_column :sightings, :latitude, :float 
  end
end
