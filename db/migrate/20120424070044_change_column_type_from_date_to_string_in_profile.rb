class ChangeColumnTypeFromDateToStringInProfile < ActiveRecord::Migration
  def up
    
    change_column :profiles, :date_of_birth, :string
  end
  def down
    change_column :profiles, :date_of_birth, :date  
  end
  
end
