class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, limit: 128 , null: false
      t.string :brief_description, null: false
      t.text :description, limit: 1400, null: false
      t.integer :subclass, default: 0, null: false
      t.integer :level, default: 2, null: false
      t.string :content_url, limit: 128
      t.string :language, limit: 2
      t.text :notes, limit: 300
      t.integer :votes, default: 0, null: false
      t.string :live_video, limit: 128
      t.string :video, limit: 128
      t.string :code_url, limit: 128
      t.string :location, limit: 64
      t.string :room
      t.date :date
      t.time :start_time
      t.time :end_time
      t.boolean :shown, default: false
      t.boolean :verified, default: false
      t.boolean :cancelled, default: false
      t.boolean :accepted, default: false
      t.string :assisted_by
      t.string :slug
      t.integer :conference_id

      t.timestamps
    end
  end
end
