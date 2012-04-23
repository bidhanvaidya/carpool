class AddCityAndCountryToStart < ActiveRecord::Migration
  def change
    add_column :starts, :city, :string    
    add_column :starts, :state, :string
    add_column :starts, :country, :string
  end
end
