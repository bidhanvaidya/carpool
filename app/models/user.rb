class User < ActiveRecord::Base
has_many :friends
has_one :profile
after_create :save_friends
has_many :posts
def self.create_with_omniauth(auth)
  create! do |user|
    user.provider = auth["provider"]
    user.uid = auth["uid"]
    user.token = auth["credentials"]["token"]
    user.name = auth["info"]["name"]
    
  end
  end
def save_friends
	user=FbGraph::User.fetch(self.uid, :access_token=>'AAAFKkl5Av5IBAIivGiLQktoVt4bZAu8DWizuNL25ZBXKGrtL7g3OG1vmBi9bv73LZAOyFer2VzOIYDpLZAs7Vu9u2KAfIZBNbl0fZBthZAFsgZDZD')
	Profile.create(:name=> user.name,
      :first_name=>user.first_name,
      :last_name=>user.last_name,
      :gender=>user.gender,
      :link=>user.link,
      :verified=>user.verified,
      :date_of_birth=>user.birthday,
      :relationship_status=>user.relationship_status,
      :current_location=>user.location.try(:name),
      :hometown=>user.hometown.try(:name),
      :user_id =>self.id,
      :email => user.email
      )
	  user.friends.each do |friend| 
 Friend.create(:user_id=> self.id, :uid=> friend.identifier, :name => friend.name) 
 
end 
end

end

