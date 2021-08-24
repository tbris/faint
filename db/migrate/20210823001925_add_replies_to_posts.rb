class AddRepliesToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :is_reply, :boolean, default: false
    add_reference :posts, :original, foreign_key: { to_table: :posts }
  end
end
