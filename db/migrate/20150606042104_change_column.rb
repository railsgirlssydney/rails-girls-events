class ChangeColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :previous_attendance, :string
  end
end
