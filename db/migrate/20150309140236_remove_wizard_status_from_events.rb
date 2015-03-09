class RemoveWizardStatusFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :wizard_status, :string
  end
end
