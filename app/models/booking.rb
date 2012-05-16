class Booking < ActiveRecord::Base
	belongs_to :post
	belongs_to :user # User who post the booking
end
