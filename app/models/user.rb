class User < ApplicationRecord
  # has_secure_password
  has_many :comments, dependent: :destroy
  has_many :cities
  has_many :places

  # def self.confirm(params)
  #   @user = User.find_by email: params[:email]
  #   @user ? @user_authenticate(params[:password]) : false
  # end

end
