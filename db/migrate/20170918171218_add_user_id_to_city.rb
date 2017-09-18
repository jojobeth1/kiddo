class AddUserIdToCity < ActiveRecord::Migration[5.1]
  def change
    add_column :cities, :user_id, :integer
  end
end
