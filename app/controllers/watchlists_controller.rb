class WatchlistsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show_list_by_user_id]
  before_action :find_movie, only: [:destroy]
  before_action :check_ownership, only: [:destroy]

  def index
    @watchlists = Watchlist.all
    render json: @watchlists
  end

  def create
    @watchlist = current_user.watchlists.create(watchlist_params)
    if @watchlist.errors.any?
      render json: @watchlist.errors, status: :unprocessable_entity
    else
      render json: @watchlist, status: 201
    end
  end

  def show_list_by_user_id
    @userwatchlist = Watchlist.where(user_id: params[:id])
    if @userwatchlist.empty?
      render json: {Error: "No favourites found"}, status: 404
    else
      render json: @userwatchlist
    end
  end
  
  def destroy
    @watchlist.destroy
    render json: 204
  end
  

  private
  def watchlist_params
    params.permit(:user_id, :movie_id, :title)
  end

  def find_movie
    begin
      @watchlist = Watchlist.find(params[:id])
    rescue
      render json: {Error: "Movie not found"}, status: 404
    end
  end

  def check_ownership
    if current_user.id != @watchlist.user.id
      render json: {Error: "You don't have permission to do that."}, status: 401
    end
  end
  
end
