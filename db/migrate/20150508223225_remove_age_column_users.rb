class RemoveAgeColumnUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :age
  end
end