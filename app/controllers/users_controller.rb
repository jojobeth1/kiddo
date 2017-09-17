class UsersController < ApplicationController

  #display list of users
  def index
    @users = User.all
    render :index
  end
  
  def create
    @user = User.create(user_params)
    redirect_to @user
  end

  def show
    @user = User.find(params[:id])
    render :show
  end


  private

  def user_params
    params.require(:user).permit(:username, :email, :password_digest)
  end

end
