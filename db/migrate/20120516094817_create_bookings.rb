class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :post_id
      t.integer :user_id
      t.boolean :accepted
      t.boolean :rejected

      t.timestamps
    end
  end
end
