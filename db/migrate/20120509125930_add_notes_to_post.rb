class AddNotesToPost < ActiveRecord::Migration
  def change
  	add_column :posts, :note, :string
  	add_column :posts, :contribution, :integer
  end
end
