class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :link
      t.boolean :verified
      t.date :date_of_birth
      t.string :relationship_status
      t.string :current_location
      t.string :hometown
      t.integer :user_id

      t.timestamps
    end
  end
end
