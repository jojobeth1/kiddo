class User < ApplicationRecord
  has_secure_password
  has_many :comments, dependent: :destroy
  has_many :cities
  has_many :places
  validates :username, presence: true, uniqueness: true, length: {minimum: 6}

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user ? @user.authenticate(params[:password_digest]) : false
  end
end
