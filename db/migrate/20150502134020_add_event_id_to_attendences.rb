class AddEventIdToAttendences < ActiveRecord::Migration
  def change
    add_column :attendences, :event_id, :integer
  end
end
