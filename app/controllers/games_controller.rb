class GamesController < ApplicationController
  def index
    @games = Game.paginate :page => params[:page], per_page: params[:per_page] || 30

    render json: @games, meta: {
      :current_page => @games.current_page,
      :per_page => @games.per_page,
      :total_entries => @games.total_entries
    }
  end
end
