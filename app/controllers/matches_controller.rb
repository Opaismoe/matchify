class MatchesController < ApplicationController

  def index
    @matches = Match.all
  end

def create
  Match.create_matches(params[:date])
  flash[:notice] = "Matches are Generated!"
  redirect_to matches_path
end


end
