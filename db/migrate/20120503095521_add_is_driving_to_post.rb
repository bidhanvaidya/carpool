class AddIsDrivingToPost < ActiveRecord::Migration
  def change
    add_column :posts, :is_driving, :boolean
  end
end
