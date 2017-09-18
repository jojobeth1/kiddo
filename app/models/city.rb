class City < ApplicationRecord
  belongs_to :user
  has_many :places, dependent: :destroy
end
