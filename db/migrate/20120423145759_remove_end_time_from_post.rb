class RemoveEndTimeFromPost < ActiveRecord::Migration
  def change
    remove_column :posts, :endtime
  end

 
end
