class DropWizardSessions < ActiveRecord::Migration[4.2]
  def up
    drop_table :wizard_sessions
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
