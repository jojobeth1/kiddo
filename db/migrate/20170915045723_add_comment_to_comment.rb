class AddCommentToComment < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :comment, :string
  end
  def
    add_reference :comments, :user, index: true, foreign_key: true
  end
end
