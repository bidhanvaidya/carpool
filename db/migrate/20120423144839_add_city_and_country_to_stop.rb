class AddCityAndCountryToStop < ActiveRecord::Migration
  def change
  
    add_column :stops, :city, :string    
    add_column :stops, :state, :string
    add_column :stops, :country, :string
  
  end
end
