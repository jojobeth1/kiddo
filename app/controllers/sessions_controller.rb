class SessionsController < ApplicationController
# get "/login", to: "sessions#new" - Form for login
  def new
    @user = User.new
  end

# post "/sessions", to: "sessions#create"
  def create
    @user = User.create(user_params)
    if @user
      login(@user)
      flash[:notice] = "You are now logged in."
      redirect_to user_path
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
    params.require(:user).permit(:username, :password)
  end
end
