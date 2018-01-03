class PagesController < ApplicationController
  def home
    @user = current_user
    @matches = Match.all
  end

  def show
  end
end
