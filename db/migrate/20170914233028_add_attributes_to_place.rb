class AddAttributesToPlace < ActiveRecord::Migration[5.1]
  def change
    add_column :places, :name, :string
    add_column :places, :category, :string
    add_column :places, :address, :string
    add_column :places, :hours, :string
    add_column :places, :phone, :string
    add_column :places, :url, :string
    add_column :places, :about, :text
  end
end
