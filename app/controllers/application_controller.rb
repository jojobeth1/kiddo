class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    render('../views/index')
  end

  def about
    render('../views/about')
  end
end
