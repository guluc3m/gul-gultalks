class AddSelectedToEvent < ActiveRecord::Migration
  def change
    add_column :events, :selected, :boolean, :default => false
  end
end
