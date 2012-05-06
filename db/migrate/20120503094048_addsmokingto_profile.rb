class AddsmokingtoProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :smoking, :boolean
  end

end
