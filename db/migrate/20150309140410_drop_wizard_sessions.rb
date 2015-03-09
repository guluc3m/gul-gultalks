class DropWizardSessions < ActiveRecord::Migration
  def up
    drop_table :wizard_sessions
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
