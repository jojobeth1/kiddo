class AddCityReferenceToPlaces < ActiveRecord::Migration[5.1]
  def change
    add_reference :places, :city, :comments, index: true, foreign_key: true
  end
end
