class ProfilesController < ApplicationController
def index
  @user= User.find(params[:user_id]).profile
 @profile= User.find(params[:user_id]).profile
  @page = FbGraph::User.me(@user.user.token).fetch
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
 
def show
@profile= User.find(params[:user_id]).profile
 @page = FbGraph::User.me(@profile.user.token).fetch
  @user= User.find(params[:user_id]).profile
 if current_user == @user.user
    @inbox=@user.receipts.inbox.where(trashed: false)
    @sentbox=  @user.receipts.sentbox.where(trashed: false) 
    @trash= @user.receipts.trash
  end
respond_to do |type|
      type.html
      type.json {render :json => @profile}
    end
end
  def update
    
  @profile= User.find(params[:user_id]).profile
    if @profile.update_attributes!(params[:profile])
      respond_to do |format|
       
        format.json { render :json => @profile }
      end
    else
      respond_to do |format|
        
        format.json { render :nothing =>  true }
      end
    end
     def edit
    @profile= User.find(params[:user_id]).profile
  end
  end
end
