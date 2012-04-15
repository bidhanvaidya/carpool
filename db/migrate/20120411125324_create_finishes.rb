class CreateFinishes < ActiveRecord::Migration
  def change
    create_table :finishes do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :post_id

      t.timestamps
    end
  end
end
