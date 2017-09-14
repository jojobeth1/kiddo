class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.confirm(user_params)
    if @user
      login(@user)
      flash[:notice] = "You are now logged in."
      redirect_to user_path(@user.username)
    else
      flash[:error] = "Incorrect email or password. Try again"
      redirect_to login_path
    end
  end

  def destroy
    logout
    flash[:notice] = "You are now logged out."
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
