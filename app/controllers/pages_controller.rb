class PagesController < ApplicationController

  def index
  end

  def home
    @user = current_user
    @matches = Match.all
    
    if @user.admin == false
      @matches = @user.matches
    end
  end

  def show
  end
end
