class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.integer :user_id
      t.string :type
      t.string :year
      t.string :name

      t.timestamps
    end
  end
end
