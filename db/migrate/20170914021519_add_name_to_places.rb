class AddNameToPlaces < ActiveRecord::Migration[5.1]
  def change
    add_column :places, :name, :string
  end
end
