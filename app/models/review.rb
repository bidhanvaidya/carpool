class Review < ActiveRecord::Base
belongs_to :profile # review reciever
belongs_to :user # review maker
end
