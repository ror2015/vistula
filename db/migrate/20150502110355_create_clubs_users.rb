class CreateClubsUsers < ActiveRecord::Migration
  def change
    create_table :clubs_users do |t|
      t.integer :club_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
