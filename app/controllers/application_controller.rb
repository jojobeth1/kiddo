class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  def index
    render('../views/index')
  end

  def about
    render('../views/about')
  end
end
