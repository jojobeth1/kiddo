class SessionsController < ApplicationController
# get "/login", to: "sessions#new" - Form for login
  def new
    @user = User.new
  end

# post "/sessions", to: "sessions#create"
  def create
    user_params = params.require(:user).permit(:email, :password_digest)
    # confirm email & password combo is correct
    @user = User.confirm(user_params)
    if @user
      login(@user)
      flash[:notice] = "You are now logged in."
      redirect_to @user
      #redirect_to user_path(@user.id)
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

end
