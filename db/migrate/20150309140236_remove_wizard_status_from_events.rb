class RemoveWizardStatusFromEvents < ActiveRecord::Migration[4.2]
  def change
    remove_column :events, :wizard_status, :string
  end
end
