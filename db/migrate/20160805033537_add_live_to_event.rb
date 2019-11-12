class AddLiveToEvent < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :live, :boolean
    Event.update_all(live: false)
  end
end
