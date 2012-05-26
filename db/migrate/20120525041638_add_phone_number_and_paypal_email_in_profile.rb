class AddPhoneNumberAndPaypalEmailInProfile < ActiveRecord::Migration
  def up
  	add_column :profiles, :phone, :integer
  	add_column :profiles, :accept_paypal, :boolean, :default => false
  	add_column :profiles, :paypal_email, :string
  end

  def down
  	remove_column :profiles, :phone
    remove_column :profiles, :accept_paypal
    remove_column :profiles, :paypal_email
  end
end
