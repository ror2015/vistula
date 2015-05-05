class CreateApplyForms < ActiveRecord::Migration
  def change
    create_table :apply_forms do |t|
      t.string :CV
      t.references :user, index: true, foreign_key: true
      t.references :offer, index: true, foreign_key: true

      t.timestamps null: false
      t.has_attached_file :CV
    end
  end
end
