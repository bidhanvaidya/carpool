class RemovestartLocationsandaddLocations < ActiveRecord::Migration
def change
  add_column :start_locations, :status, :string
  rename_table :start_locations, :locations
  drop_table :end_locations
end
end
