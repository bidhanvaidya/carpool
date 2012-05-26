class AddIndextoPost < ActiveRecord::Migration
  def change
  add_index :posts, :startdate
  end

  
end
