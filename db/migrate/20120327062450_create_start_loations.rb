class CreateStartLoations < ActiveRecord::Migration
  def change
    create_table :start_loations do |t|
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
