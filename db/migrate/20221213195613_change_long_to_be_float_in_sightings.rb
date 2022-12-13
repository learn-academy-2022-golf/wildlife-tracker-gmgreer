class ChangeLongToBeFloatInSightings < ActiveRecord::Migration[7.0]
  def change
    change_column :sightings, :latitude, :float
    change_column :sightings, :longitude, :float
  end
end
