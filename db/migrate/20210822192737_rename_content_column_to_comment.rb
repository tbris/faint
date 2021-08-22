class RenameContentColumnToComment < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :content, :comment
  end
end
