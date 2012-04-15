class CreateEndLocations < ActiveRecord::Migration
  def change
    create_table :end_locations do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :post_id

      t.timestamps
    end
  end
end
