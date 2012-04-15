class ChangeUidFromIntegerToFloat < ActiveRecord::Migration
  def change
  change_column :friends, :uid, :float
  end

 
end
