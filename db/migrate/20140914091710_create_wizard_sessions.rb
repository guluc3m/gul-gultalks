class CreateWizardSessions < ActiveRecord::Migration
  def change
    create_table :wizard_sessions do |t|
      t.integer :event_id, null: false
      t.string :session_id, null: false

      t.timestamps
    end
  end
end
