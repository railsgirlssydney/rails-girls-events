class AddUnder18ColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :under_18, :boolean
  end
end