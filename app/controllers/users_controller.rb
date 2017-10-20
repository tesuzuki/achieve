class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def show
    @user=User.find(params[:id])
    @follows=@user.followed_users
    @followed_users=@user.followers
  end
end
