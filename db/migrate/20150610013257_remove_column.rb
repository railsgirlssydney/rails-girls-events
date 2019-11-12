class RemoveColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :tshirt_color
  end
end
