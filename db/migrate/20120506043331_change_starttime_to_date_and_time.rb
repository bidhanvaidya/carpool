class ChangeStarttimeToDateAndTime < ActiveRecord::Migration
  def up
  	change_column :posts, :starttime, :date
  	rename_column :posts, :starttime, :startdate
  	add_column :posts, :time, :string
  end

  def down
  	change_column :posts, :startdate, :datetime
  	rename_column :posts, :startdate, :starttime
  	remove_column :posts, :time
  end

end
