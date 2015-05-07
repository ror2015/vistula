class AddStatusToClubUser < ActiveRecord::Migration
  def change
    add_column :clubs_users, :status, :string
  end
end
