class MoveVotesFromUsersToApplications < ActiveRecord::Migration[6.0]
  def change
    rename_column :votes, :user_id, :application_id
  end
end
