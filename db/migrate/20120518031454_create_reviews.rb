class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :profile_id
      t.integer :user_id
      t.text :review
      t.integer :rating

      t.timestamps
    end
  end
end
