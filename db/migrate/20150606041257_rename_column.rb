class RenameColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :previous_attendant, :previous_attendance
  end
end
