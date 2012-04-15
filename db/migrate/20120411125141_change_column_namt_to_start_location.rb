class ChangeColumnNamtToStartLocation < ActiveRecord::Migration
  def change
    rename_table :locations, :starts
  end

 
end
