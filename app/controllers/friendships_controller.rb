class FriendshipsController < ApplicationController
  before_action :authenticate_user
  before_action :find_friend_by_email, only: [:create]
  before_action :find_friend_by_username, only: [:destroy]
  before_action :find_friendship, only: [:create, :destroy]
  before_action :check_ownership, only: [:destroy]

  def show_list_by_user_id
    @id = current_user.id
    @userfriendships = User.find(@id).friends
    if @userfriendships.empty?
      render json: {Error: "No friends found"}, status: 404
    else
      render json: @userfriendships.to_json(:only => [:id, :username])
    end
  end

  # prevent user from adding friends who are already on friends list
  def create
    if @friendship
      render json: { Message: "You're already friends!" }, status: :unprocessable_entity
    else
      @friend = current_user.friendships.create(:friend_id => @friend_id)
      if @friend.errors.any?
        render json: @friend.errors, status: :unprocessable_entity
      else
        render json: @friend, status: 201
      end
    end
  end
  
  def destroy
    @friendship.destroy
    render status: 204
  end
  

  private
  def friendship_params
    params.permit(:user_id, :friend_id, :email, :username)
  end

  def find_friend_by_username
    begin
      @friend_id = User.find_by(username: params[:username]).id
    rescue
      render json: {Error: "Friend not found"}, status: 404
    end
  end

  def find_friend_by_email
    begin
      @friend_id = User.find_by(email: params[:email]).id
    rescue
      render json: {Error: "Friend not found"}, status: 404
    end
  end

  def find_friendship
    begin
      @friendship = current_user.friendships.find_by_user_id_and_friend_id(current_user.id, @friend_id)
    rescue
      render json: {Error: "Friend not found"}, status: 404
    end
  end

  def check_ownership
    if current_user.id != @friendship.user.id
      render json: {Error: "You don't have permission to do that."}, status: 401
    end
  end
  
end
