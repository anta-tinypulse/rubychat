class UsersController < ApplicationController

  before_action :require_login, only: [:index, :add_friend]
  before_action :skip_if_logged_in, only: [:login]

  def new
    @user = User.new
  end

  def index
    @users = User.order(:name)
    @friends = Friendship.where(user_id: current_user.id).map { |f| User.find(f.friend_id) }
    @friends = @friends << current_user
    @users = @users - @friends
  end

  def create
    @user = User.new(user_params)
    @user.image_url = "https://randomuser.me/api/portraits/med/women/#{User.count}.jpg"

    if @user.save
      session[:user_id] = @user.id
      redirect_to users_path
    else
      redirect_to welcome_index_path
    end
  end

  def login

  end

  def add_friend
    @friendship = Friendship.new(user_id: current_user.id, friend_id: params[:friend])
    @friend = User.find(params[:friend])

    if @friendship.save
      flash[:notice] = "#{@friend.name} has been added to your friend list!"
      redirect_to users_path
    else
      flash[:error] = "Oops! An error has occured!"
      redirect_to users_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end
end
