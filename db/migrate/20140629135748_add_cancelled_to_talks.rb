class AddCancelledToTalks < ActiveRecord::Migration
  def change
    add_column :talks, :cancelled, :boolean
  end
end
