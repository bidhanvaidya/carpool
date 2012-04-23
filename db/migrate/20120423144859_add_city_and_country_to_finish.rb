class AddCityAndCountryToFinish < ActiveRecord::Migration
   def change
    add_column :finishes, :city, :string    
    add_column :finishes, :state, :string
    add_column :finishes, :country, :string
  end
end
