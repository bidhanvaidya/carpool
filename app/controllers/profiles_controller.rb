class ProfilesController < ApplicationController
def index
  @user= User.find(params[:user_id]).profile
  @page = FbGraph::Page.fetch(@user.user.uid)
  if current_user == @user.user
    @inbox=@user.receipts.inbox.where(trashed: false)
    @sentbox=  @user.receipts.sentbox.where(trashed: false) 
    @trash= @user.receipts.trash
  end
end
def send_message
   body=params[:body]
    @user= User.find(params[:user_id]).profile
   current_user.profile.send_message(@user, body, ("Message from "+current_user.name + " to "+ @user.first_name))
    redirect_to posts_path
end
def reply_message
body=params[:body]
    receipt= Receipt.find(params[:receipt])
current_user.profile.reply_to_sender(receipt, body)
 redirect_to user_profiles_path(current_user)
end
def trash
body=params[:body]
    receipt= userReceipt.find(params[:receipt])
receipt.move_to_trash
 redirect_to user_profiles_path(current_user)
end
end
