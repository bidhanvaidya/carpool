class RenameTableStartLocationAndAddPostId < ActiveRecord::Migration
  def change
  rename_table :start_loations, :start_locations
  add_column :start_locations, :post_id, :integer
  end

  
end
