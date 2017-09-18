class AddUserIdToComments < ActiveRecord::Migration[5.1]
  def change
    add_reference :comments, index: true, foreign_key: true
  end
  
end
