class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :position
      t.text :description
      t.text :requinments

      t.timestamps null: false
    end
  end
end
