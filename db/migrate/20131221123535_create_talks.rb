class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :title
      t.string :brief_description
      t.string :description
      t.string :teacher
      t.string :room
      t.date :day
      t.time :start_time
      t.time :end_time
      t.string :assisted_by
      t.string :teacher_contact_info
      t.time :creation_time
      t.integer :votes
      t.string :comments
      t.integer :level
      t.string :tags
      t.string :content_url
      t.bool :active

      t.timestamps
    end
  end
end
