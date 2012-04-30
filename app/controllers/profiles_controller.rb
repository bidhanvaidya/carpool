class ProfilesController < ApplicationController
def index
  @user= User.find(params[:user_id]).profile
end
def send_message
   body=params[:body]
    @user= User.find(params[:user_id]).profile
   current_user.profile.send_message(@user, body, ("Message from "+current_user.name + " to "+ @user.first_name))
    redirect_to posts_path
end

end
