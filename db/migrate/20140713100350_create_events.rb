class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, limit: 128 , null: false
      t.string :brief_description, null: false
      t.text :description, limit: 700, null: false
      t.integer :subclass, default: 0, null: false
      t.string :speaker, limit: 64
      t.string :room
      t.string :location, limit: 64
      t.date :date
      t.time :start_time
      t.time :end_time
      t.string :assisted_by
      t.string :speaker_contact_info, limit: 64
      t.integer :votes, default: 0, null: false
      t.text :comments, limit: 300
      t.integer :level, default: 2, null: false
      t.string :content_url, limit: 128
      t.boolean :active, default: true
      t.integer :conference_id
      t.boolean :cancelled, default: false
      t.string :slug

      t.timestamps
    end
  end
end
