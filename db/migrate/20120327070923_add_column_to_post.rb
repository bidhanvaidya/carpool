class AddColumnToPost < ActiveRecord::Migration
  def change
  add_column :posts, :startLocation, :string
  add_column :posts, :endLocation, :string
  end
end
