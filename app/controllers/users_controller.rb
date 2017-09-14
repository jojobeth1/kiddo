class UsersController < ApplicationController
  # get "/signup", to: "users#new", as: "new_user"
  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)

    if user.save
      redirect_to user_path(user)
    end
  end
  # def create
  #   user_params = params.require(:user).permit(:username, :email, :password)
  #
  #   #take the username and email and make it lowercase
  #   user_params[:username] = user_params[:username].downcase
  #   user_params[:email] = user_params[:email].downcase
  #
  #   if User.find_by username: user_params[:username]
  #     # check to see if username exist in db
  #     flash[:error] = "\"#{user_params[:username]}\" already taken."
  #     redirect_to new_user_path
  #   elsif User.find_by email: user_params[:email]
  #     # check to see if email exist in db
  #     flash[:error] = "\"#{user_params[:email]}\" already taken."
  #     redirect_to new_user_path
  #   elsif user_params[:email] !~ /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/
  #     #validate email
  #     flash[:error] = "\"#{user_params[:email]}\" is not a valid e-mail address."
  #     redirect_to new_user_path
  #   elsif user_params[:password].length < 8
  #     # check to see if password length is greater that
  #     flash[:error] = "Password must be at least 8 characters long"
  #     redirect_to new_user_path
  #   else
  #     @user = User.create(user_params)
  #     login(@user)
  #     redirect_to user_path(@user.username)
  #   end
  # end
  # get "/users/:id", to:"users#show", as:"user"
  def show
    user_id = params[:id]
    @user = User.find_by_id(user_id)
    # @user = User.find_by username: params[:username]
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password_digest)
end


  # get "/users/:id/edit", to: "users#edit", as: "edit_user"# Edit User Form
  # patch "/users/:id", to:"users#update", as: "update_user" # patch db with new info
  # delete "/users/:id", to: "users#destroy", as: "delete_user"
end
