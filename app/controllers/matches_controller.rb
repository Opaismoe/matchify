class MatchesController < ApplicationController

  def index
    @matches = Match.all
  end

def create
  Match.create_matches(params[:date])
  flash[:notice] = "The matches are created!"
  redirect_to matches_path
end


end
