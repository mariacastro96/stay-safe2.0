class CreateHazardNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :hazard_notifications do |t|
      t.references :user, foreign_key: true
      t.references :hazard, foreign_key: true

      t.timestamps
    end
  end
end
