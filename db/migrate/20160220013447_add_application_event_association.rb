class AddApplicationEventAssociation < ActiveRecord::Migration[6.0]
  def change
    add_column :applications, :event_id, :integer
  end
end
