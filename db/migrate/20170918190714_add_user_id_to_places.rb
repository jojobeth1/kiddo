class AddUserIdToPlaces < ActiveRecord::Migration[5.1]
  def change
      add_column :places, :user_id, :integer
  end
end
