class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first
      t.string :last
      t.string :username
      t.string :email
      t.string :password_digest
      t.text :bio
      t.integer :num_of_kids

      t.timestamps
    end
  end
end
