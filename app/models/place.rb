class Place < ApplicationRecord
  belongs_to :user, required: true
  belongs_to :city, required: true
  
end
