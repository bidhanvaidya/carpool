class Profile < ActiveRecord::Base
belongs_to :user
has_many :reviews
acts_as_messageable
after_create :education_work
validates :phone, :length => {:minimum => 9, :maximum => 10}
def education_work
	user=FbGraph::User.me(self.user.token).fetch
	interest =user.interests.map(&:name).to_sentence
	work_place=""
	user.work.each do|work|
		work_place= work.employer.name + ", " + work_place
	end
	self.update_attributes(:interest =>interest,
      :work=>work_place)


end

end
