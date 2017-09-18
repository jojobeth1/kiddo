module SessionsHelper
  def login(user)
    sessions[:user_id] = user.id
    @current_user = user
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def logout
    @current_user = sessions[:user_id] = nil
  end

  def authorized?(resource_id)
    @current_user.id == resource_id
  end
end
