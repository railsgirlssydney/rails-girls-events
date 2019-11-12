class AddDietaryRequirementsColToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :dietary_requirements, :string
  end
end
