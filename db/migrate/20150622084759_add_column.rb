class AddColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :extra_info, :text
  end
end
