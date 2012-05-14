class AddMusicWorkInterests < ActiveRecord::Migration
  def change
  	add_column :profiles, :music, :text
  	add_column :profiles, :work, :text
  	add_column :profiles, :interest, :text
  end
  

end
