class UpdateStatusColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :status, :admin_status
    add_column :users, :user_status, :string
  end
end
