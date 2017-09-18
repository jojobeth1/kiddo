class UsersController < ApplicationController

  #display list of users
  def index
    @users = User.all
    render :index
  end

  def create
    user_params = params.require(:user).permit(:username, :email, :password)
    user_params[:username] = user_params[:username].downcase
    user_params[:email] = user_params[:email].downcase

    if User.find_by username: user_params[:username]
    # Is username already in db?
      flash[:error] = "Username taken. Please try again."
      redirect_to root_path
    elsif User.find_by email: user_params[:email]
      # Is email already in db?
      flash[:error] = "Email taken. Please try again."
      redirect_to root_path
    elsif user_params[:password].length < 8
      flash[:error] = 'Password must be at least 8 characters long.'
      redirect_to root_path
    else
      @user = User.create(user_params)
      redirect_to user_path(@user.username)
    end
  end

  def show
    @user = User.find(params[:id])
    @comments = Comment.where user_id: @user.id
    @comments = @comments.reverse
    @places = Place.where user_id: @user.id
    @places = @places.reverse
  end

  def edit
    user = User.find_by username: params[:username]
    if !user || user.id != session[:user_id]
      flash[:error]="You are not authorized to edit this user's profile."
      redirect_to user_path params[:username]
    else
      @user = User.find_by username: params[:username]
    end
  end

  def update
    user_params = require


  # private
  #
  # def user_params
  #   params.require(:user).permit(:username, :email, :password_digest)
  # end

end
