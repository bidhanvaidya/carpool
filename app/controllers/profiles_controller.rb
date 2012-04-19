class ProfilesController < ApplicationController
def index
  @user= current_user.profile
end
end
