class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_group!
  before_action :tournament_name
  
  private
  
  def tournament_name
    tournament_id = params[:tournament_id]
    if tournament_id != nil
      @tournament_name = Tournament.find_by_id(tournament_id).name
    end
  end
end
