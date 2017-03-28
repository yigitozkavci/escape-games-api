class AddLatLongToScenarios < ActiveRecord::Migration
  def change
    add_column :scenarios, :latitude, :float
    add_column :scenarios, :longitude, :float
  end
end
