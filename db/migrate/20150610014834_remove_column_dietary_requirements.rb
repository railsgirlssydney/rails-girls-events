class RemoveColumnDietaryRequirements < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :dietary_requirements
  end
end
