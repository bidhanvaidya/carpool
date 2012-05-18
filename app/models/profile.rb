class Profile < ActiveRecord::Base
belongs_to :user
has_many :reviews
acts_as_messageable
end
