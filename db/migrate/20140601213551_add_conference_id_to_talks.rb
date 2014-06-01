class AddConferenceIdToTalks < ActiveRecord::Migration
  def change
    add_column :talks, :conference_id, :integer
  end
end
