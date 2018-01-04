class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def promote
    @user = User.find(params[:id])
    @user.toggle!(:admin)
    redirect_to users_url
  end
end
