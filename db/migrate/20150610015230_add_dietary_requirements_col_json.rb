class AddDietaryRequirementsColJson < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :dietary_requirements, :json
  end
end
