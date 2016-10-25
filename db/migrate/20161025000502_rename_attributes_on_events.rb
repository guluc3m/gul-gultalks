class RenameAttributesOnEvents < ActiveRecord::Migration
  def change
    rename_column :events, :start_time, :start_dtime
    rename_column :events, :end_time, :end_dtime
  end
end
