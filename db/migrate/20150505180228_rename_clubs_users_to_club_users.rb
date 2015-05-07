class RenameClubsUsersToClubUsers < ActiveRecord::Migration
  def self.up
    rename_table :clubs_users, :club_users
  end
end
