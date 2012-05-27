class HomesController < ApplicationController
def index
#@bidhan = FbGraph::User.fetch('Shrestha', :access_token => '363467483692946|rR0K1EePKHcxbIjSKN9e9meB2mA')
#@a=FbGraph::User.me(User.find_by_provider_and_name('facebook', current_user.name).token).fetch
@posts= Post.where("startdate>?", Date.yesterday).order("startdate").limit(3)
end


end
