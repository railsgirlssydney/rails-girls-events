class RenameCommentAdmin < ActiveRecord::Migration[6.0]
  def change
    rename_column :comments, :user_id, :admin_id
  end
end
