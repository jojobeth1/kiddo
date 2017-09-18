class AddPlacesToCity < ActiveRecord::Migration[5.1]
  change_table :places do |t|
    t.belongs_to :city
  end
end
