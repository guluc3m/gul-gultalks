class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :title
      t.string :brief_description
      t.string :description
      t.string :speaker
      t.string :room
      t.date :date
      t.time :start_time
      t.time :end_time
      t.string :assisted_by
      t.string :speaker_contact_info
      t.integer :votes
      t.string :comments
      t.integer :level
      t.string :tags
      t.string :content_url
      t.boolean :active

      t.timestamps
    end
  end
end
